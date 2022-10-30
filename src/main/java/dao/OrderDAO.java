package dao;

import java.sql.Connection;
import java.sql.SQLException;


import dto.OrderDTO;

import java.util.List;


import dto.CartDTO;
import dto.OrderDTO;
import dto.OrderDetailDTO;


public interface OrderDAO {
	/**
	 * 결제 시 주문 테이블에 레코드 삽입
	 */
	int orderInsert(OrderDTO dto, List<CartDTO> cartList) throws SQLException;
	
	/**
	 * 결제 시 주문상세 테이블에 레코드 삽입
	 */
	public int[] orderDetailInsert(Connection con, List<CartDTO> cartList) throws SQLException;
	

	/**
	 *  결제 시 상품 테이블에서 상품재고 감소
	 */
	int decreaseByModelStock(String modelStock) throws SQLException;

	
	/**
	 * 해당 회원의 장바구니에 저장되어있는 메뉴들을 가져오는 메소드
	 */
	List<CartDTO> cartMenuSelect(String emailId) throws SQLException;

	/**
	 * 본인의 주문내역 조회(비회원 - 주문번호, 이메일로 확인 후 페이지 표시)
	 * @throws SQLException 
	 * */
	List<OrderDetailDTO> getOrders(String orderNum, String realEmail) throws SQLException;

	/**
	 * 로그인하여 배송조회를 누르면 주문내역이 조회되는 기능
	 * */
	List<OrderDetailDTO> getDetailList(String emailId) throws SQLException;
}
