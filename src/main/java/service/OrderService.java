package service;

import java.sql.SQLException;

import dto.OrderDTO;

public interface OrderService {
	/**
	 *  주문테이블에 주문내역 등록하기
	 */
	int insert(OrderDTO dto) throws SQLException;

}
