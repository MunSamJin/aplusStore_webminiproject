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

		String category = null;
		String modelNum = null;
		int modelPrice = 0;
		int modelStock = 0;
		int result = 0;

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, modelName);

			rs = ps.executeQuery();

			if(rs.next()) {
				modelNum = rs.getString(1);
				category = rs.getString(2);
				modelPrice = rs.getInt(4);
				modelStock = rs.getInt(8);
				System.out.println(modelNum+category+modelPrice+modelStock);
				result = insert(con, category, modelNum, modelName, emailId, modelPrice, modelStock);
			}

		} finally {
			DbUtil.dbClose(con, ps, rs);
		}

		return result;
	}

	//insert
	public int insert(Connection con, String category, String modelNum, String modelName, String emailId, int modelPrice, int modelStock) throws SQLException {
		PreparedStatement ps = null;
		String sql = "insert into basket values(cart_num_seq.nextval, ?, ?, ?, ?, ?, 1, ?)";
		int result = 0;
		System.out.println("insert with stock");

		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, category);
			ps.setString(2, modelNum);
			ps.setString(3, modelName);
			ps.setString(4, emailId);
			ps.setInt(5, modelPrice);
			ps.setInt(6, modelStock);

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
				cart = new CartDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getInt(8));
				System.out.println("dao overlap find " + cart);
			}

		} finally {
			DbUtil.dbClose(con, ps, rs);
		}

		return cart;
	}


	/*@Override
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
	}*/
	
	@Override
	public int delete(String emailId, String modelName) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "delete basket where email_id=? and model_name=?";
		int result = 0;
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, emailId);
			ps.setString(2, modelName);
			
			result = ps.executeUpdate();
			
		} finally {
			DbUtil.dbClose(con, ps);
		}
		
		return result;
	}


	@Override
	public int update(String modelName, int modelCount) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "update basket set model_count=? where model_name=?";
		int result = 0;

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, modelCount);
			ps.setString(2, modelName);
			
			System.out.println("dao update " + modelName + modelCount);
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
				//재고수량 업데이트
				int modelStock = cartStockSelect(con, rs.getString(4));
				list.add(new CartDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7), modelStock));

			}

		} finally {
			DbUtil.dbClose(con, ps, rs);
		}

		return list;
	}


	//select시 재고수량 조회
	public int cartStockSelect(Connection con, String modelName) throws SQLException{
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from items where model_name=?";

		int modelStock = 0;

		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, modelName);
			rs = ps.executeQuery();

			if(rs.next()) {

				modelStock = rs.getInt(8);
				if(cartStockUpdate(con, modelStock, modelName) > 0) {
					System.out.println("modelStock update complete");
				}
			}

		} finally {
			DbUtil.dbClose(null, ps, rs);
		}

		return modelStock;
	}

	//재고수량 업데이트
	public int cartStockUpdate(Connection con, int modelStock, String modelName) throws SQLException{
		PreparedStatement ps = null;
		String sql = "update basket set model_stock=? where model_name=?";
		int result = 0;

		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, modelStock);
			ps.setString(2, modelName);
			result = ps.executeUpdate();

		} finally {
			DbUtil.dbClose(null, ps);
		}

		return result;
	}



	//비회원
	//items에서 원하는 모델명 정보 찾아서 cart로 담기
	@Override
	public CartDTO selectForGuest(String modelName) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from items where model_name=?";
		CartDTO cart = null;

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, modelName);
			rs = ps.executeQuery();

			if(rs.next()) {
				//cartNum, category, modelNum, modelName, email, modelPrice, modelCount, modelStock
				cart = new CartDTO(null, rs.getString(2), rs.getString(1), rs.getString(3), null, rs.getInt(4), 1, rs.getInt(8));
				System.out.println(cart);
			}

		} finally {
			DbUtil.dbClose(con, ps, rs);
		}

		return cart;
	}
}
