package service;

import java.sql.SQLException;

import java.util.List;
import java.util.Map;

import dao.OrderDAO;
import dao.OrderDAOImpl;

import dto.OrderDTO;

import dto.ItemDTO;
import dto.OrderDTO;
import dto.OrderDetailDTO;


import mail.Mail;

import dao.OrderDAO;
import dao.OrderDAOImpl;
import dto.CartDTO;
import dto.OrderDTO;





public class OrderServiceImpl implements OrderService {
	private OrderDAO orderDAO = new OrderDAOImpl();


	/**
	 *  주문테이블에 주문내역 등록하기
	 */

	@Override
	public int insert(OrderDTO dto , List<CartDTO> cartList, String emailId) throws SQLException {
		//orderDAO호출 - 주문 테이블에 등록하기
		int orderNum = orderDAO.orderInsert(dto, cartList, emailId);

		//System.out.println("orderNum 서비스"+orderNum);

		if(orderNum==0)throw new SQLException("등록되지 않았습니다.");

		//		String mailId = dto.getRealEmail();
		//		System.out.println("mailId"+mailId);

		//Mail mail = new Mail();
		//mail.mailSend(mailId,dto);

		return orderNum;
	}

	/**
	 * 해당 회원의 장바구니에 저장되어있는 메뉴들을 가져오는 메소드
	 */
	@Override
	public List<CartDTO> cartMenuSelect(String emailId) throws SQLException {
		List<CartDTO> list = orderDAO.cartMenuSelect(emailId);

		if(list.size()==0 || list.isEmpty()) throw new SQLException("해당 정보가 없습니다");

		//System.out.println("Service list = " + list);
		return list;
	}

	@Override
	public List<OrderDetailDTO> getOrders(String orderNum) throws SQLException {
		List<OrderDetailDTO> list = orderDAO.getOrders(orderNum);
		if(list == null) {
			throw new SQLException("출력되는 값이 없습니다.");
		}
		return list;
	}

}
