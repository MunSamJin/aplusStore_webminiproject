package service;

import java.sql.SQLException;

import java.util.List;

import dto.CartDTO;
import dto.ItemDTO;

public interface CartService {
	
	
	/**
	 * 장바구니 조회
	 */
	List<CartDTO> select(String emailId) throws SQLException;
	
	
	
	/**
	 * 장바구니 추가
	 */
	void insert(String modelNum, String emailId) throws SQLException;
	
	
	/**
	 * 장바구니 삭제
	 */
	void delete(String emailId, String modelNum) throws SQLException;
	
	
	
	/**
	 * 장바구니 수정
	 */
	void update(String cartNum, int modelCount) throws SQLException;
	
}
