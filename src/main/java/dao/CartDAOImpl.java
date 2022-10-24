package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.CartDTO;
import dto.ItemDTO;
import util.DbUtil;

public class CartDAOImpl implements CartDAO {

	@Override
	public int selectToInsert(String modelName, String emailId) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from items where model_name=?";
		String modelNum = null;
		int result = 0;
		
		try {
			con = DbUtil.getConnection();
			ps.setString(1, modelName);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				modelNum = rs.getString(2);
				result = insert(con, modelNum, modelName, emailId);
			}
			
		} finally {
			DbUtil.dbClose(con, ps, rs);
		}
		
		return result;
	}
	
	//insert
	public int insert(Connection con, String modelNum, String modelName, String emailId) throws SQLException {
		PreparedStatement ps = null;
		String sql = "insert into basket values(cart_num_seq.nextval, ?, ?, ?, 1)";
		int result = 0;
		
		try {
			con = DbUtil.getConnection();
			ps.setString(1, modelNum);
			ps.setString(2, modelName);
			ps.setString(3, emailId);
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
			
		} finally {
			DbUtil.dbClose(null, ps);
		}
		
		return result;
	}
	

	@Override
	public int delete(String emailId, String modelNum) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "delete basket where email_id=? and model_num=?";
		int result = 0;
		
		try {
			con = DbUtil.getConnection();
			ps.setString(1, emailId);
			ps.setString(2, modelNum);
			ps = con.prepareStatement(sql);
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
			ps.setInt(1, modelCount);
			ps.setString(2, cartNum);
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
			
		} finally {
			DbUtil.dbClose(con, ps);
		}
		
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
				list.add(new CartDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5)));
				System.out.println("connection > cart Ã£±â");
			}
			
		} finally {
			DbUtil.dbClose(con, ps);
		}
		
		return list;
	}

}
