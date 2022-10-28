package dao;

import java.sql.Connection;
import java.sql.SQLException;


import dto.OrderDTO;

import java.util.List;
import java.util.Map;

import dto.CartDTO;
import dto.ItemDTO;
import dto.OrderDTO;
import dto.OrderDetailDTO;


public interface OrderDAO {
	/**
	 * 해당 회원의 장바구니에 저장되어있는 메뉴들을 가져오는 메소드
	 */
	List<CartDTO> cartMenuSelect(String emailId) throws SQLException;
	
	/**
	 * 결제 시 주문상세 테이블에 레코드 삽입
	 */
	public int[] orderDetailInsert(Connection con, List<CartDTO> cartList) throws SQLException;


	/**
	 * 주문내역 검색
	 * @throws SQLException 
	 * */
	List<OrderDetailDTO> getOrders(String orderNum) throws SQLException;
	

	/**
	 * 주문테이블 등록하기
	 *
	 * 동시에 주문상세테이블 등록, 장바구니 비우기, 상품재고 감소 시킨다.
	 * @param emailId 
	 * @return 0이면 주문 실패, 1이면 주문 성공
	 */
	int orderInsert(OrderDTO dto, List<CartDTO> cartList, String emailId) throws SQLException;

	
	
	/**
	 * 장바구니 비우기
	 */
	int basketDelete(Connection con, String emailId) throws SQLException;

	
	/**
	 * 상품재고 감소
	 */
	int[] decreaseByModelStock(Connection con, List<CartDTO> cartList) throws SQLException;

}
