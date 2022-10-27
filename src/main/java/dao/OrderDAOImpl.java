package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
<<<<<<< HEAD
import java.sql.SQLException;

import dto.OrderDTO;
=======
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.CartDTO;
import dto.ItemDTO;
import dto.OrderDTO;
import dto.OrderDetailDTO;
>>>>>>> merge221027
import util.DbUtil;


public class OrderDAOImpl implements OrderDAO {
<<<<<<< HEAD
	//BasketDAO basketDao = new BasketDAOImpl();
	//List<BasketDTO> bascketlist = new ArrayList<BasketDTO>(); 

=======

	/**
	 * 해당 회원의 장바구니에 저장되어있는 메뉴들을 가져오는 메소드
	 */
	@Override
	public List<ItemDTO> cartMenuSelect(String emailId) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		CartDTO cartDTO = null;
		ItemDTO itemDTO = null;
		List<ItemDTO> list = new ArrayList<ItemDTO>();
		String sql = "";
		
		
		
		
		
		return null;
	}
	
	
>>>>>>> merge221027
	
	/**
	 * 주문테이블 등록하기
	 * 
	 * 동시에 주문상세테이블 등록, 장바구니 비우기, 상품재고 감소 시킨다.
	 * @return 0이면 주문 실패, 1이면 주문 성공 
	 */
	@Override
	public int orderInsert(OrderDTO dto) throws SQLException {
		
		Connection con = null;
		PreparedStatement ps = null;
		int result =0;
		String sql = 
				"insert into a_orders values (order_num_seq.nextval,?,?,?,sysdate,1,?,?,?,?)"; //주문번호, 연락처, 주소, 주문날짜, 주문수단, 주문상태, 회원여부, 이메일, 총가격
		
		try {
			con = DbUtil.getConnection();
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
			 //	int re [] = orderDetailInsert(con, dto);
			 //	for(int i : re) {
			 //		if(i != 1) {
			 //			con.rollback();
			 //			throw new SQLException("주문할 수 없습니다...");
			 //		}
			 //	}
			//장바구니 비우기
			//상품재고 감소
				
			 //con.commit();
				
			}
		}finally {
			DbUtil.dbClose(con, ps);
		}
		
		System.out.println("DAO result" + result);
		return result;	
	}
	

	/**
	 * 주문상세 테이블 등록하기
	 */
	@Override
	public int[] orderDetailInsert(Connection con, OrderDTO dto) throws SQLException {
		
		PreparedStatement ps = null;
		int result [] = null;
<<<<<<< HEAD
		String sql = "insert into order_detail values (detail_model_num_seq.nextval,order_num_seq.currval,?,?)";
=======
		String sql = "insert into order_detail2 values (detail_model_num_seq.nextval,order_num_seq.currval,?,?)";
>>>>>>> merge221027
		
		try{
			ps = con.prepareStatement(sql);
			
			//장바구니 결제 목록 가져오기
			//bascketlist = basketDao.????;
			
			//for(BasketDTO bascket : bascketlist) {
			//	ps.setString(1, bascket.getModelNum()); //주문수량
			//	ps.setInt(2, bascket.getMoelCount()); //할인가격
			//	ps.addBatch();
			//	ps.clearParameters();
			//}
			
			result = ps.executeBatch();//일괄처리
			
		}finally {
			DbUtil.dbClose(null, ps);
		}
		
		return result;
	}
	
	
	/**
	 * 장바구니 비우기
	 */
	
	
	/**
	 * 상품재고 감소
	 */
	@Override
	public int decreaseByModelStock(String modelStock) throws SQLException {
		
		return 0;
	}
<<<<<<< HEAD
	
=======

	
	/**
	 * 주문 상세가져오기
	 * */
	public List<OrderDetailDTO> getOrders(String orderNum) throws SQLException {
		Connection con=null;
		PreparedStatement ps =null;
		ResultSet rs = null;
		List<OrderDetailDTO> list = new ArrayList<OrderDetailDTO>();
		
		String sql = "select d.detail_model_num, o.order_num, d.detail_model_name, d.detail_qty, d.sale_price, o.total_price "
				+ "from a_orders o join order_detail2 d on (o.order_num = d.order_num) where o.order_num=?";
		try {
			
			ps = con.prepareStatement(sql);
			ps.setString(1, orderNum);
			rs = ps.executeQuery();
			
			if(rs.next()) {				
				String a =rs.getString(1);
				String b =rs.getString(2);
				String c =rs.getString(3); 
				int d =rs.getInt(4);
				int e =rs.getInt(5);
				int f =rs.getInt(6); 
				
				OrderDTO orderDTO = new OrderDTO(f);
				OrderDetailDTO dto = new OrderDetailDTO(a,b,c,d,e, orderDTO);
				list.add(dto);
			}
			
		} finally {
			DbUtil.dbClose(null, ps, rs);
		}
		return list;
	}
	

>>>>>>> merge221027

}


