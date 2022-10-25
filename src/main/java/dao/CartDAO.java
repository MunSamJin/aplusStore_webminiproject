package dao;

import java.sql.SQLException;

import java.util.List;

import dto.CartDTO;

public interface CartDAO {
	/**
	 * 회원 - 장바구니에 상품 추가(db)
	 * param : 모델번호
	 * insert into basket values(cart_num_seq.nextval, ?, ?, 1)
	 */
	int selectToInsert(String modelName, String emailId) throws SQLException;
	
	
	/**
	 * 비회원 - 장바구니에 상품 추가(session)
	 * 
	 */
	
	
	
	/**
	 * 회원 - 장바구니 상품 조회
	 * select * from basket where email_id=?
	 */
	List<CartDTO> select(String emailId) throws SQLException;
	
	
	
	/**
	 * 비회원 - 장바구니 상품 조회
	 */
	
	
	
	/**
	 * 회원 - 장바구니 상품 삭제
	 * delete basket where email_id=? and model_num=?
	 */
	int delete(String emailId, String modelNum) throws SQLException;
	
	
	/**
	 * 비회원 - 장바구니 상품 삭제
	 */
	
	
	
	/**
	 * 회원 - 장바구니 상품 수량 수정
	 * update basket set model_count=? where cart_num=?
	 */
	int update(String cartNum, int modelCount) throws SQLException;
	
	
	
	/**
	 * 비회원 - 장바구니 상품 수량 수정
	 */
}
