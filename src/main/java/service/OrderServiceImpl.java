package service;

import java.sql.SQLException;


import dao.OrderDAO;
import dao.OrderDAOImpl;
import dto.OrderDTO;
import mail.Mail;



public class OrderServiceImpl implements OrderService {
	private OrderDAO orderDAO = new OrderDAOImpl();

	@Override
	public int insert(OrderDTO dto) throws SQLException {
		//orderDAO호출 - 주문 테이블에 등록하기
		int orderNum = orderDAO.orderInsert(dto);
		
		System.out.println("orderNum 서비스"+orderNum);
	
		if(orderNum==0)throw new SQLException("등록되지 않았습니다.");
		
		String mailId = dto.getRealEmail();
		System.out.println("mailId"+mailId);
		
		Mail mail = new Mail();
		mail.mailSend(mailId,dto);
		
		return orderNum;
	}



}
