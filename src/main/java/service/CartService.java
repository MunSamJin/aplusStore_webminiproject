package service;

import java.sql.SQLException;
import java.util.List;

import dto.CartDTO;

public interface CartService {
	
<<<<<<< HEAD

	List<CartDTO> select(String emailId) throws SQLException;
	
	void insert(String modelNum, String emailId) throws SQLException;

	void delete(String emailId, String modelNum) throws SQLException;

=======
	
	/**
	 * ��ٱ��� ��ȸ
	 */
	List<CartDTO> select(String emailId) throws SQLException;
	
	
	
	/**
	 * ��ٱ��� �߰�
	 */
	void insert(String modelName, String emailId) throws SQLException;
	
	
	/**
	 * ��ٱ��� ����
	 */
	void delete(String cartNum) throws SQLException;
	
	
	
	/**
	 * ��ٱ��� ����
	 */
>>>>>>> basic_setting
	void update(String cartNum, int modelCount) throws SQLException;
	
}
