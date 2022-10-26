package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.CartDTO;
import util.DbUtil;

public class CartDAOImpl implements CartDAO {

	@Override
	public int selectToInsert(String modelName, String emailId) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from items where model_name=?";
		String modelNum = null;
		int modelPrice = 0;
		int result = 0;
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, modelName);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				modelNum = rs.getString(1);
				modelPrice = rs.getInt(4);
				
				result = insert(con, modelNum, modelName, emailId, modelPrice);
			}
			
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}
		
		return result;
	}
	
	//insert
	public int insert(Connection con, String modelNum, String modelName, String emailId, int modelPrice) throws SQLException {
		PreparedStatement ps = null;
		String sql = "insert into basket values(cart_num_seq.nextval, ?, ?, ?, ?, 1)";
		int result = 0;
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, modelNum);
			ps.setString(2, modelName);
			ps.setString(3, emailId);
			ps.setInt(4, modelPrice);
			
			result = ps.executeUpdate();
			
		} finally {
			DbUtil.dbClose(null, ps);
		}
		
		return result;
	}
	
	
	//중복 체크
	public CartDTO overlapCheck(String emailId, String modelName) throws SQLException{
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from basket where email_id=? and model_name=?";
		CartDTO cart = null;
		System.out.println("dao overlap");
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, emailId);
			ps.setString(2, modelName);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				cart = new CartDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6));
				System.out.println("dao overlap find");
			}
			
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}
		
		return cart;
	}
	

	@Override
	public int delete(String cartNum) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "delete basket where cart_num=?";
		int result = 0;
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, cartNum);
			
			result = ps.executeUpdate();
			
		} finally {
			DbUtil.dbClose(con, ps);
		}
		
		return result;
	}

	
	@Override
	public int update(String cartNum, int modelCount) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "update basket set model_count=? where cart_num=?";
		int result = 0;
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, modelCount);
			ps.setString(2, cartNum);
			
			System.out.println("dao update " + modelCount + cartNum);
			result = ps.executeUpdate();
			
		} finally {
			DbUtil.dbClose(con, ps);
		}
		System.out.println("update result " + result);
		return result;
	}

	
	@Override
	public List<CartDTO> select(String emailId) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from basket where email_id=?";
		List<CartDTO> list = new ArrayList<CartDTO>();
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, emailId);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				list.add(new CartDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6)));
				
			}
			
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}
		
		return list;
	}
	
	

}
