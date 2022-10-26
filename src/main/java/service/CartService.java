package service;

import java.sql.SQLException;
import java.util.List;

import dto.CartDTO;

public interface CartService {
	

	List<CartDTO> select(String emailId) throws SQLException;
	
	void insert(String modelNum, String emailId) throws SQLException;

	void delete(String emailId, String modelNum) throws SQLException;

	void update(String cartNum, int modelCount) throws SQLException;
	
}
