package service;

import java.sql.SQLException;


import dto.OrderDTO;

import java.util.List;

import dto.CartDTO;
import dto.OrderDTO;
import dto.OrderDetailDTO;


public interface OrderService {
	/**
	 *  주문테이블에 주문내역 등록하기
	 */

	int insert(OrderDTO dto, List<CartDTO> cartList) throws SQLException;
	

	/**
	 * 해당 회원의 장바구니에 저장되어있는 메뉴들을 가져오는 메소드
	 */
	List<CartDTO> cartMenuSelect(String emailId) throws SQLException;

	/**
	 * 주문조회
	 * */
	public List<OrderDetailDTO> getOrders(String orderNum, String realEmail) throws SQLException;

}
