package service;

import java.sql.SQLException;
import java.util.List;

import dto.CartDTO;

public interface CartService {


	/**
	 * ��ٱ��� ��ȸ
	 */
	List<CartDTO> select(String emailId) throws SQLException;
	CartDTO selectForGuest(String modelName) throws SQLException;


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
	void update(String cartNum, int modelCount) throws SQLException;

}
