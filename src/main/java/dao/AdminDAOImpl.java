package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.AdminDTO;
import dto.AdminDetailDTO;
<<<<<<< HEAD
=======
import dto.OrderDTO;
import dto.OrderDetailDTO;

>>>>>>> merge221027
import util.DbUtil;

public class AdminDAOImpl implements AdminDAO {

	@Override
	public List<AdminDTO> selectSales() {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<AdminDTO> list = new ArrayList<AdminDTO>();
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("select * from a_orders");
			rs = ps.executeQuery();
		   
			while(rs.next()){
				list.add(new AdminDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), 
					rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9)));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}
		
		return list;
	}

	
	@Override
	public int update(AdminDTO orderDTO) {
		Connection con = null;
		PreparedStatement ps = null;	
		int result=0;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("update a_orders set order_state=? where order_num=?");
   
			ps.setString(1, orderDTO.getOrderState());
			ps.setString(2, orderDTO.getOrderNum());			
			result = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbUtil.dbClose(con, ps);
		} 
		System.out.println("order"+orderDTO.getOrderState());
		return result;
	}

	
	@Override
	public List<AdminDTO> getOrderList() {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<AdminDTO> list = new ArrayList<AdminDTO>();
		String sql = "select order_num, order_name, order_addr, gue_mem, order_date, order_state,order_mail, phone, total_price from a_orders "; 
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				AdminDTO dto = new AdminDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), 
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9));
				list.add(dto);
			}
		} catch(Exception e) {
			e.printStackTrace();		
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}		
		return list;
	}
	
	
	/**
	 * 해당하는 레코드 검색
	 * */
	
	@Override
	public List<AdminDetailDTO> searchByOrderNum(String orderNum, String realEmail) {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<AdminDetailDTO> list = new ArrayList<AdminDetailDTO>();
		
		String sql = "select d.detail_model_num, o.order_num, d.detail_model_name, d.detail_qty, d.sale_price, o.total_price "
				+ "from a_orders o join order_detail d on (o.order_num = d.order_num) "
				+ "where o.order_num ='3' and o.order_mail='orchid59@naver.com'";
				//+"where o.order_num=? and o.order_mail=?";
				//+ "where o.order_num =? "; 
				// + "where o.order_mail=?";
		
		System.out.println("orderNum=|" + orderNum +"," + realEmail+"|");
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			System.out.println("sql = " + sql);
			//ps.setString(1, orderNum);
			//ps.setString(2, realEmail.trim());	
			rs = ps.executeQuery();
			
			if(rs.next()) {
				System.out.println("----------");
				AdminDTO adminDTO = new AdminDTO(rs.getInt(6));
				AdminDetailDTO detailDTO = new AdminDetailDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), adminDTO);	
				
				//detailDTO.setAdminDTO(adminDTO);
				
				list.add(detailDTO);
			}
			
			System.out.println("daoImpl_orderNum/realEmail = "+orderNum+","+realEmail);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}
		
		return list;
	}
	

	
	@Override
	public int incrementByStock(String orderNum) {
		Connection con = null;
		PreparedStatement ps = null;
		int result=0;
		String sql= "update items set model_stock=model_stock+1 where order_num=?";
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, orderNum);		
			result = ps.executeUpdate();
		
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DbUtil.dbClose(con, ps);
		}
		return result;
	}


	@Override
	public int insert(AdminDTO adminDTO) {
		PreparedStatement ps = null;
		Connection con = null;
		int result=0;
		try {
			con = DbUtil.getConnection();
		    ps = con.prepareStatement("insert into a_orders(order_num,order_state,order_date) values(?,?,sysdate)");
		    ps.setString(1, adminDTO.getOrderNum());
		    ps.setString(2, adminDTO.getOrderState());
		    result = ps.executeUpdate();
		
		} catch (SQLException e) {
		   e.printStackTrace();
		} finally {
		   DbUtil.dbClose(con, ps);
		}
		  return result;
		}


	@Override
	public List<AdminDetailDTO> getDetailList(String orderNum) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<AdminDetailDTO> list = new ArrayList<AdminDetailDTO>();
		
		String sql = "select d.detail_model_num, o.order_num, d.detail_model_name, d.detail_qty, d.sale_price, o.total_price "
				+ "from a_orders o join order_detail2 d on (o.order_num = d.order_num) where o.order_num=?"; 
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, orderNum);
			rs = ps.executeQuery();
			
			System.out.println("DAO_detailList sql = "+sql);
			
			if(rs.next()) {

				System.out.println("--------------");
				AdminDTO adminDTO = new AdminDTO(rs.getInt(6));
				AdminDetailDTO detailDTO = new AdminDetailDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), adminDTO);	
				
				//detailDTO.setAdminDTO(adminDTO);
				
				list.add(detailDTO);
			}
			
		} catch(Exception e) {
			e.printStackTrace();		
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}		
		System.out.println("getDetailList_DAO 값 : "+list);
		return list;
		
	}


	
	public AdminDTO getOrderState(String orderNum) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		AdminDTO adminDTO = null;
		String sql = "select order_state from a_orders where order_num=?";
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);	
			
			ps.setString(1, orderNum);			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				adminDTO = new AdminDTO(rs.getString(1));		
			}
		} catch(Exception e) {
			e.printStackTrace();		
		} finally {
			DbUtil.dbClose(con, ps);
		}		
		return adminDTO;
	}
<<<<<<< HEAD
=======
	
	/**
	 * 댓글정보 가져오기
	 * */
	private List<OrderDetailDTO> getOrders(String orderNum) throws SQLException {
		Connection con=null;
		PreparedStatement ps =null;
		ResultSet rs = null;
		List<OrderDetailDTO> list = new ArrayList<OrderDetailDTO>();
		
		String sql = "select d.detail_model_num, o.order_num, d.detail_model_name, d.detail_qty, d.sale_price, o.total_price "
				+ "from a_orders o join order_detail2 d on (o.order_num = d.order_num) where o.order_num=?";
		try {
			
			con = DbUtil.getConnection();
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

