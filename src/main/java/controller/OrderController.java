package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.OrderDTO;
import service.OrderService;
import service.OrderServiceImpl;

public class OrderController implements AjaxController {

	OrderService orderService = new OrderServiceImpl();
	
	@Override
	public void handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

	}
	
	public void orderInsert(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		
		//넘어오는 값 받기
			String memberGuest = request.getParameter("guest");//비회원
				
			String orderName = request.getParameter("orderName"); //이름
				
			String postcode = request.getParameter("postcode");//우편번호
			String address = request.getParameter("address");//주소
			String detailAddress = request.getParameter("detailAddress");//상세주소
			String extraAddress = request.getParameter("extraAddress");//참고항목
				
			String orderState = request.getParameter("orderState"); //주문상태
				
			String orderEmail = request.getParameter("orderEmail");//이메일 ID
			String emailSelect = request.getParameter("emailSelect");//이메일 @ 이하 주소
				
			String orderPhone = request.getParameter("orderPhone");//휴대폰번호
			String totalPrice = request.getParameter("totalPrice");//총가격
				
			//우편번호 하나로 모으기
			String realAddr = postcode + address + detailAddress + extraAddress;
				
			//이메일 하나로 모으기
			String realEmail = orderEmail+emailSelect;
				
			memberGuest = "1"; //1=회원, 0=비회원
			orderState="상품준비중";
				
			//DTO객체 생성
			OrderDTO dto = 
					new OrderDTO(memberGuest, orderName, realAddr, orderState, realEmail, orderPhone, 0);
				
			
			//OrderService 호출
			int result = orderService.insert(dto);
			
			PrintWriter out = response.getWriter();
			out.print(result);

	}

}
