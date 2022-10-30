package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.CartDTO;
import dto.OrderDTO;
import dto.UserDTO;
import net.sf.json.JSONArray;
import service.OrderService;
import service.OrderServiceImpl;


public class OrderController implements AjaxController {

	OrderService orderService = new OrderServiceImpl();


	@Override
	public void handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


	}
	//주문하기
	public void orderInsert(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		String memberGuest = null;
		HttpSession session = request.getSession();


		// 로그인 사용자 인지 아닌지를 판단(비회원, 회원인지 판단한다.)

		//String emailId = session.getAttribute("emailId");
		String emailId = "sikkk@naver.com";
		
		List<CartDTO> list=null;
		
		//총구매금액
		int totalPrice=0;
		
		if(emailId==null || emailId.equals("")) { //로그인이 안되었다면
			memberGuest = "0"; //비회원

			//장바구니에 담긴 상품을 session.getAttribute("cart정보")로 가져온다.

		}else {//로그인 되었다면
			memberGuest = "1"; //회원

			//OrderService 호출 - 해당 회원의 장바구니에 저장되어있는 메뉴들을 가져오는 메소드
			list = orderService.cartMenuSelect(emailId);
			//System.out.println("list = " + list);

			for(CartDTO cart : list) {
				totalPrice +=(cart.getModelCount()*cart.getModelPrice());
				
				//System.out.println("totalPrice" + totalPrice);
				//System.out.println("cart.getModelCount()" + cart.getModelCount());
				//System.out.println("cart.getModelPrice()" + cart.getModelPrice());
			}//forEnd
		}//ifEnd

		//OrderMain에서 넘어오는 값 받기
		//이름
		String orderName = null;
		String deliverName = request.getParameter("deliverName");
		String pickupName =  request.getParameter("pickupName");

		if( deliverName == null || deliverName.equals("")) {
			orderName = pickupName;
			
		}else if(pickupName==null || pickupName.equals("")){
			orderName = deliverName;
		}

		//System.out.println("orderName = " + orderName);
		//System.out.println("deliverName = " + deliverName);
		//System.out.println("pickupName = " + pickupName);

		String postcode = request.getParameter("postcode");//우편번호
		String address = request.getParameter("address");//주소
		String detailAddress = request.getParameter("detailAddress");//상세주소
		String extraAddress = request.getParameter("extraAddress");//참고항목

		//우편번호 하나로 모으기
		String realAddr = postcode + address + detailAddress + extraAddress;

		//System.out.println("realAddr = " + realAddr);

		//주문상태
		String orderState = request.getParameter("orderState");
		orderState="상품준비중";

		//이메일 ID
		String orderEmail = request.getParameter("orderEmail");
		String emailSelect = request.getParameter("emailSelect");
		
		//이메일 하나로 모으기
		String realEmail = orderEmail+emailSelect;
		//System.out.println("realEmail = " + realEmail);
		

		//휴대폰번호
		String orderPhone = request.getParameter("orderPhone");
		
		//System.out.println("orderPhone = " + orderPhone);
		

		//DTO객체 생성
		OrderDTO dto =
				new OrderDTO(memberGuest, orderName, realAddr, orderState, realEmail, orderPhone, totalPrice);

		System.out.println("Controller에서 dto" + dto);
		
		
		//OrderService 호출 - 주문테이블에 등록하기		
		System.out.println("OrderController의 주문.....................");
		int result = orderService.insert(dto, list, emailId);// list는 cartList정보

		PrintWriter out = response.getWriter();
		out.print(result);

	}
	
	
	//배송을원합니다.
//	public void userInfoSelect(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException, SQLException {
//		HttpSession session = request.getSession();
//		//String emailId = session.getAttribute("emailId");
//		String emailId = "sikkk@naver.com";
//
//		List<UserDTO> list = orderService.userInfoSelect(emailId);
//		System.out.println("userInfoSelect 컨트롤러 list = " + list);
//
//		JSONArray arr = JSONArray.fromObject(list);
//
//		PrintWriter out = response.getWriter();
//		out.print(list);
//
//	}

}