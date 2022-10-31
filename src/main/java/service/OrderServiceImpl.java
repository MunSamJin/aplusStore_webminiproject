package service;

import java.sql.SQLException;
import java.util.List;

import dao.OrderDAO;
import dao.OrderDAOImpl;
import dto.CartDTO;
import dto.OrderDTO;
import dto.OrderDetailDTO;
import dto.UserDTO;
import mail.Mail;


public class OrderServiceImpl implements OrderService {
	private OrderDAO orderDAO = new OrderDAOImpl();


	/**
	 *  주문테이블에 주문내역 등록하기
	 */
	@Override
	public int insert(OrderDTO dto , List<CartDTO> cartList, String emailId) throws SQLException {
		//orderDAO호출 - 주문 테이블에 등록하기
		int orderNum = orderDAO.orderInsert(dto, cartList, emailId);

		System.out.println("orderNum 서비스"+orderNum);

		if(orderNum==0)throw new SQLException("등록되지 않았습니다.");

		//주문 완료 후 주문내역 메일 발송
		//System.out.println("mailId"+mailId);
		
		//dao에서 주문내역 조회하기
		OrderDTO orderNumber = orderDAO.selectOrderNum(emailId);

		//Mail mail = new Mail();
		//mail.mailSend(orderNumber, dto);
		
		System.out.println("메일보내기 서비스 orderDTO.getRealEmail() " + dto.getRealEmail());
		System.out.println("메일보내기 서비스 orderDTO.getOrderName() " + dto.getOrderName());
		System.out.println("메일보내기 서비스 orderDTO.getOrderNum() " + orderNumber.getOrderNum());

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

	
	/**
	 * 주문할 때 회원 정보 화면에 보여주기
	 */
	@Override
	public List<UserDTO> userInfoSelect(String emailId) throws SQLException {
		
		List<UserDTO> list = orderDAO.userInfoSelect(emailId);
		
		if(list.size()==0 || list.isEmpty()) throw new SQLException("해당 정보가 없습니다");
		System.out.println("userInfoSelect 서비스list  = " + list);
		return list;
	}

	/**
	 * 로그인하여 배송조회를 누르면 주문내역이 조회되는 기능
	 * */
	@Override
	public List<OrderDetailDTO> getDetailList(String emailId) throws SQLException {
		List<OrderDetailDTO> list = orderDAO.getDetailList(emailId);
		if(list == null) {
			throw new SQLException("출력되는 값이 없습니다.");
		}
		System.out.println("service list = "+list);

		return list;
	}
	@Override
	public List<OrderDetailDTO> getOrders(String orderNum, String realEmail) throws SQLException {
		List<OrderDetailDTO> list = orderDAO.getOrders(orderNum, realEmail);
		if(list == null) {
			throw new SQLException("출력되는 값이 없습니다.");
		}
		System.out.println("service list = "+list);

		return list;
	}

	@Override
	public int insert(OrderDTO orderDTO) throws SQLException {
		int result = orderDAO.insert(orderDTO);
		if(result<=0) {
			throw new SQLException("실패");
		}
		return result;
	}

	@Override
	public int update(OrderDTO orderDTO) throws SQLException {
		
		int result = orderDAO.update(orderDTO);
		if(result<=0) {
			throw new SQLException("실패");
		}
		return result;
	}

	@Override
	public List<OrderDetailDTO> success(String orderNum) throws SQLException {
		List<OrderDetailDTO> list = orderDAO.success(orderNum);
		if(list == null) {
			throw new SQLException("출력되는 값이 없습니다.");
		}
		System.out.println("service list = "+list);

		return list;
	}

}
