package service;

import java.sql.SQLException;


import dto.OrderDTO;

import java.util.List;
import java.util.Map;

import dto.AdminDTO;
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
	 * 본인의 주문내역 조회(비회원 - 주문번호, 이메일로 확인 후 페이지 표시)
	 * */
	public List<OrderDetailDTO> getOrders(String orderNum, String realEmail) throws SQLException;

	
	/**
	 * 주문할 때 회원 정보 화면에 보여주기
	 * @param emailId
	 * @return
	 */
	List<UserDTO> userInfoSelect(String emailId) throws SQLException;


	/**
	 * 로그인하여 배송조회를 누르면 주문내역이 조회되는 기능
	 * */
	public List<OrderDetailDTO> getDetailList(String emailId) throws SQLException;

	
	/**
	 * 주문상태 바꿔서 다시 등록하기(상품준비중->주문취소)
	 * */
	public int insert(OrderDTO orderDTO) throws SQLException;
	
	
	/**
	 * 주문상태 레코드 수정하기 (상품준비중->주문취소)
	 * */
	public int update(OrderDTO orderDTO) throws SQLException;

	/**
	 * 주문취소 후 페이지 고침
	 * */
	public List<OrderDetailDTO> success(String orderNum) throws SQLException;
}
