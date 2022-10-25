package dao;

import java.sql.SQLException;

import java.util.List;

import dto.CartDTO;

public interface CartDAO {

	int selectToInsert(String modelName, String emailId) throws SQLException;

	List<CartDTO> select(String emailId) throws SQLException;
	

	int delete(String emailId, String modelNum) throws SQLException;
	

	int update(String cartNum, int modelCount) throws SQLException;

}
