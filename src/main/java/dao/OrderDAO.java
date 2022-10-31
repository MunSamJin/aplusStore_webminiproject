package dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import dto.CartDTO;
import dto.OrderDTO;
import dto.OrderDetailDTO;
import dto.UserDTO;


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
	 * 본인의 주문내역 조회(비회원 - 주문번호, 이메일로 확인 후 페이지 표시)
	 * @throws SQLException
	 * */
	List<OrderDetailDTO> getOrders(String orderNum, String realEmail) throws SQLException;
	

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
	
	/**
	 * 주문내역 이메일 발송을 위한 select
	 */
	OrderDTO selectOrderNum(String emailId) throws SQLException;

	
	/**
	 * 주문할 때 회원 정보 화면에 보여주기
	 */
	List<UserDTO> userInfoSelect(String emailId) throws SQLException;


	/**
	 * 로그인하여 배송조회를 누르면 주문내역이 조회되는 기능
	 * */
	List<OrderDetailDTO> getDetailList(String emailId) throws SQLException;
	
	
	/**
	 * 상품재고 증가
	 */
	int[] increaseByModelStock(Connection con, List<CartDTO> cartList) throws SQLException;
	
	/**
	 * 주문상태 변경
	 * */
	int update(OrderDTO orderDTO) throws SQLException;
}
