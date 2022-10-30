package service;

import java.sql.SQLException;


import dto.OrderDTO;

import java.util.List;
import java.util.Map;

import dto.CartDTO;
import dto.OrderDTO;
import dto.OrderDetailDTO;
import dto.UserDTO;


public interface OrderService {
	/**
	 *  주문테이블에 주문내역 등록하기
	 */

	int insert(OrderDTO dto, List<CartDTO> cartList, String emailId) throws SQLException;
	

	/**
	 * 해당 회원의 장바구니에 저장되어있는 메뉴들을 가져오는 메소드
	 */
	List<CartDTO> cartMenuSelect(String emailId) throws SQLException;
	

	/**
	 * 주문 상세조회
	 * */
	public List<OrderDetailDTO> getOrders(String orderNum) throws SQLException;

	
	/**
	 * 주문할 때 회원 정보 화면에 보여주기
	 * @param emailId
	 * @return
	 */
	List<UserDTO> userInfoSelect(String emailId) throws SQLException;

	




}
