package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.CartDTO;
import dto.OrderDTO;
import dto.OrderDetailDTO;
import dto.UserDTO;
import util.DbUtil;


public class OrderDAOImpl implements OrderDAO {

	/**
	 * 해당 회원의 장바구니에 저장되어있는 메뉴들을 가져오는 메소드
	 */
	@Override
	public List<CartDTO> cartMenuSelect(String emailId) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		CartDTO cartDTO = null;
		
		List<CartDTO> list = new ArrayList<CartDTO>();
		String sql = "select model_num, model_name, model_count, model_price, model_stock from basket where email_id=?";
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, emailId);
			rs = ps.executeQuery();
			while(rs.next() ) {
				cartDTO = new CartDTO(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5));
				
				list.add(cartDTO);
			}
			
		}finally {
			DbUtil.dbClose(con, ps, rs);
		}
		
		//System.out.println("DAO list = " + list);
		return list;

	}



	/**
	 * 주문테이블 등록하기
	 *
	 * 동시에 주문상세테이블 등록, 장바구니 비우기, 상품재고 감소 시킨다.
	 * @param emailId 
	 * @return 0이면 주문 실패, 1이면 주문 성공
	 */
	@Override

	public int orderInsert(OrderDTO dto, List<CartDTO> cartList, String emailId) throws SQLException {
		//System.out.println("dao orderInsert...왔니...?");

		Connection con = null;
		PreparedStatement ps = null;
		int result =0;
		String sql =
				"insert into a_orders values (order_num_seq.nextval,?,?,?,sysdate,1,?,?,?,?)"; //주문번호, 이름, 연락처, 주소, 주문날짜, 주문수단, 주문상태, 회원여부, 이메일, 총가격

		try {
			con = DbUtil.getConnection();
			con.setAutoCommit(false);
			ps = con.prepareStatement(sql);

			//?가 있다면 개수만큼 setXxx()필요
			ps.setString(1, dto.getOrderName()); //주문자이름
			ps.setString(2, dto.getOrderPhone()); //연락처
			ps.setString(3, dto.getRealAddr()); //주소
			ps.setString(4, dto.getOrderState()); //주문상태
			ps.setString(5, dto.getMemberGuest());//회원여부
			ps.setString(6, dto.getRealEmail());//이메일
			ps.setInt(7, dto.getTotalPrice());//총가격

			result=ps.executeUpdate();

			if(result == 0) {
				con.rollback();
				throw new SQLException("등록할 수 없습니다.");
				
			}else {
				//주문상세 등록하기
			 	int re [] = orderDetailInsert(con, cartList);
			 	
			 	for(int i : re) {
				 	if(i != 1) {
				 			con.rollback();
				 			throw new SQLException("주문할 수 없습니다...");
					}
			 	}
			 	//장바구니 비우기
			 	//System.out.println("dao 장바구니 비우러가자...");
			 	basketDelete(con, emailId);
			 	
			 	//상품재고 감소
			 	decreaseByModelStock(con, cartList);
				
			 	con.commit();
			 	
			}//ifEnd
			
		}finally {
			DbUtil.dbClose(con, ps);
		}

		//System.out.println("DAO result" + result);
		return result;
	}


	/**
	 * 주문상세 테이블 등록하기
	 */
	@Override

	public int[] orderDetailInsert(Connection con, List<CartDTO> cartList) throws SQLException {
		
		PreparedStatement ps = null;
		int result [] = null;
		String sql = "insert into order_detail2 values (detail_model_num_seq.nextval,order_num_seq.currval,?,?,?)"; //주문상세번호, 주문번호, 상품이름, 주문수량, 할인가격(단가)
		
		try{
			ps = con.prepareStatement(sql);

			//장바구니 결제 목록 가져오기
			for(CartDTO cart : cartList) {
				ps.setString(1, cart.getModelName());//상품이름
				ps.setInt(2, cart.getModelCount()); //주문수량
				ps.setInt(3, cart.getModelPrice()); //할인가격
				ps.addBatch();
				ps.clearParameters();
			}

			result = ps.executeBatch(); //일괄처리

		}finally {
			DbUtil.dbClose(null, ps);
		}

		return result;
	}

	
	/**
	 * 상품재고 감소
	 */
	@Override
	public int[] decreaseByModelStock(Connection con, List<CartDTO> cartList) throws SQLException {
	
		PreparedStatement ps = null;
		int[] result=null;
		String sql = "update items set model_stock = model_stock-? where model_num=?";
				
		try {
			
			ps = con.prepareStatement(sql);
			
			for(CartDTO cart : cartList) {
				ps.setInt(1, cart.getModelCount());
				ps.setString(2, cart.getModelNum());
				ps.addBatch();
				ps.clearParameters();
			}
			
			result = ps.executeBatch();
			
		}finally {
			DbUtil.dbClose(null, ps);
		}
		
		return result;
	}


	/**
	 *  본인의 주문내역 조회(비회원 - 주문번호, 이메일로 확인 후 페이지 표시)
	 * */

	public List<OrderDetailDTO> getOrders(String orderNum, String realEmail) {
		Connection con=null;
		PreparedStatement ps =null;
		ResultSet rs = null;
		List<OrderDetailDTO> list = new ArrayList<OrderDetailDTO>();

		String sql = "select d.detail_model_num, o.order_num, d.detail_model_name, d.detail_qty, d.sale_price, o.order_state, o.total_price "
				+ "from a_orders o join order_detail2 d on (o.order_num = d.order_num) where o.order_num=? and o.order_mail=?";
		try {

			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setString(1, orderNum);
			ps.setString(2, realEmail);
			rs = ps.executeQuery();

			while(rs.next()) {
				System.out.println("--------->");
				String a =rs.getString(1);
				String b =rs.getString(2);
				String c =rs.getString(3);
				int d =rs.getInt(4);
				int e =rs.getInt(5);
				String f =rs.getString(6);
				int g =rs.getInt(7);

				OrderDTO orderDTO = new OrderDTO(f,g);
				//OrderDTO totalPrice = new OrderDTO(g);

				OrderDetailDTO detailDTO = new OrderDetailDTO(a, b, c, d, e, orderDTO);
				list.add(detailDTO);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}
		return list;
	}

	
	/**
	 * 결제 완료되면 장바구니 비우기
	 */
	@Override
	public int basketDelete(Connection con, String emailId) throws SQLException{
		PreparedStatement ps = null;
		String sql_delete = "delete from basket where email_id =?";
		
		//System.out.println("cartDel = " + emailId);
		int result = 0;
		
		try {
			ps = con.prepareStatement(sql_delete);
			ps.setString(1,emailId);
			result = ps.executeUpdate();
			
		} finally {
			DbUtil.dbClose(null, ps);
		}
		//System.out.println("장바구니비우기 dao result = " + result);
		return result;
	}
	
	
	/**
	 * 주문내역 이메일 발송을 위한 select
	 */
	@Override
	public OrderDTO selectOrderNum(String emailId) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "select order_num_seq.currval, order_name, order_mail from a_orders";
		
		//System.out.println("selectOrderNum emailId = " + emailId);
		
		OrderDTO orderDTO = null;
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				orderDTO = new OrderDTO(rs.getInt(1), rs.getString(2), rs.getString(3));
			}
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}
		//System.out.println("주문내역메일발송 dao orderDTO = " + orderDTO);
		return orderDTO;
	}



	/**
	 * 주문할 때 회원 정보 화면에 보여주기
	 */
	@Override
	public List<UserDTO> userInfoSelect(String emailId) throws SQLException {
		//System.out.println("userInfoSelect DAO 왔니??");
		//System.out.println("userInfoSelect emailId = " + emailId);
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = "select * from member where email_id=?";

		List<UserDTO> list = new ArrayList<UserDTO>();
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, emailId);
			rs = ps.executeQuery();
			
			while(rs.next()) {
			
				list.add(new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5)));
			}
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}
		//System.out.println("주문할 때 회원 정보 dao list =  " + list);
		return list;
	}

	/**
	 * 로그인하여 배송조회를 누르면 주문내역이 조회되는 기능
	 * */
	@Override
	public List<OrderDetailDTO> getDetailList(String emailId) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<OrderDetailDTO> list = new ArrayList<OrderDetailDTO>();

		String sql = "select d.detail_model_num, o.order_num, d.detail_model_name, d.detail_qty, d.sale_price, o.order_state, o.total_price "
				+ "from a_orders o join order_detail2 d on (o.order_num = d.order_num) where o.emailId=?";

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setString(1, emailId);
			rs = ps.executeQuery();

			//System.out.println("getDetailList = " + emailId);

			while(rs.next()) {
				//System.out.println("--------->");
				String a =rs.getString(1);
				String b =rs.getString(2);
				String c =rs.getString(3);
				int d =rs.getInt(4);
				int e =rs.getInt(5);
				String f =rs.getString(6);
				//int g =rs.getInt(7);

				OrderDTO orderState = new OrderDTO(f);
				//OrderDTO totalPrice = new OrderDTO(g);

				OrderDetailDTO detailDTO = new OrderDetailDTO(a, b, c, d, e, orderState);
				list.add(detailDTO);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}
		//System.out.println("getDetailList_DAO 값 : " + list);
		return list;

	}
	

	/**
	 * 상품재고 증가
	 */
	@Override
	public int[] increaseByModelStock(Connection con, List<OrderDetailDTO> orderDetailDTO) throws SQLException {
	
		PreparedStatement ps = null;
		int[] result=null;
		String sql = "update items set model_stock = model_stock+? where model_name=?";
				
		try {
			
			ps = con.prepareStatement(sql);
			
			for(OrderDetailDTO detailDTO : orderDetailDTO) {
				ps.setInt(1, detailDTO.getDetailQty());
				ps.setString(2, detailDTO.getDetailModelName());
				ps.addBatch();
				ps.clearParameters();
			}
			
			result = ps.executeBatch();
			
		}finally {
			DbUtil.dbClose(null, ps);
		}
		
		return result;
	}



	@Override
	public int insert(OrderDTO orderDTO) {
		PreparedStatement ps = null;
		Connection con = null;
		int result=0;
		try {
			con = DbUtil.getConnection();
		    ps = con.prepareStatement("insert into a_orders(order_num,order_state,order_date) values(?,?,sysdate)");
		    ps.setInt(1, orderDTO.getOrderNum());
		    ps.setString(2, orderDTO.getOrderState());
		    result = ps.executeUpdate();
		
		} catch (SQLException e) {
		   e.printStackTrace();
		} finally {
		   DbUtil.dbClose(con, ps);
		}
		  return result;
	}


	@Override
	public int update(OrderDTO orderDTO) {
		Connection con = null;
		PreparedStatement ps = null;	
		int result=0;
		try {
			con = DbUtil.getConnection();
			con.setAutoCommit(false);
			ps = con.prepareStatement("update a_orders set order_state='주문취소' where order_num=?");
   
			ps.setInt(1, orderDTO.getOrderNum());			
			result = ps.executeUpdate();
			
			//System.out.println("DAO update result " + result);
			
			
			if(result==0) {
				con.rollback();
				throw new SQLException();
			}else {
				//상품재고 증가시키기
				List<OrderDetailDTO> orderDetailList = this.getOrderDetailByOrderNum(con, orderDTO.getOrderNum());
				increaseByModelStock(con, orderDetailList);
				
				con.commit();
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbUtil.dbClose(con, ps);
		} 
		//System.out.println("order"+orderDTO.getOrderState());
		return result;
	}
	
	/**
	 * 주문번호에 해당하는 주문상세정보 가져오기 
	 * */
	public List<OrderDetailDTO> getOrderDetailByOrderNum(Connection con, int orderNum){
		PreparedStatement ps =null;
		ResultSet rs = null;
		List<OrderDetailDTO> list = new ArrayList<OrderDetailDTO>();

		String sql = "select * from order_detail2 where order_Num=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, orderNum);
			rs = ps.executeQuery();

			while(rs.next()) {
				//System.out.println("--------->");
				String a =rs.getString(1);
				String b =rs.getString(2);
				String c =rs.getString(3);
				int d =rs.getInt(4);
				int e =rs.getInt(5);
				
				OrderDetailDTO orderDetailDTO = new OrderDetailDTO(a, c, a, d, e);
				
				list.add(orderDetailDTO);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DbUtil.dbClose(null, ps, rs);
		}
		return list;
	}


	@Override
	public List<OrderDetailDTO> success(String orderNum) throws SQLException {
		Connection con=null;
		PreparedStatement ps =null;
		ResultSet rs = null;
		List<OrderDetailDTO> list = new ArrayList<OrderDetailDTO>();

		String sql = "select d.detail_model_num, o.order_num, d.detail_model_name, d.detail_qty, d.sale_price, o.order_state, o.total_price "
				+ "from a_orders o join order_detail2 d on (o.order_num = d.order_num) where o.order_num=? ";
		try {

			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setString(1, orderNum);
			rs = ps.executeQuery();

			while(rs.next()) {
				//System.out.println("--------->");
				String a =rs.getString(1);
				String b =rs.getString(2);
				String c =rs.getString(3);
				int d =rs.getInt(4);
				int e =rs.getInt(5);
				String f =rs.getString(6);
				int g =rs.getInt(7);

				OrderDTO orderDTO = new OrderDTO(f,g);

				OrderDetailDTO detailDTO = new OrderDetailDTO(a, b, c, d, e, orderDTO);
				list.add(detailDTO);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}
		return list;
	}




}


