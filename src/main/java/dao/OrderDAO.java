package dao;

import java.sql.Connection;
import java.sql.SQLException;

import dto.OrderDTO;

public interface OrderDAO {
	/**
	 * 결제 시 주문 테이블에 레코드 삽입
	 */
	int orderInsert(OrderDTO dto) throws SQLException;
	
	/**
	 * 결제 시 주문상세 테이블에 레코드 삽입
	 */
	public int[] orderDetailInsert(Connection con, OrderDTO dto) throws SQLException;
	

	/**
	 *  결제 시 상품 테이블에서 상품재고 감소
	 */
	int decreaseByModelStock(String modelStock) throws SQLException;

	
}
