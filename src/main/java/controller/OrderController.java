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
import dto.OrderDetailDTO;
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

			//DB의 cart테이블에서 조회해서 그 정보를 주문할수 있도록 한다.
			/**
			 * OrderService 호출 - 해당 회원의 장바구니에 저장되어있는 메뉴들을 가져오는 메소드
			 */
			list = orderService.cartMenuSelect(emailId);

			System.out.println("list = " + list);

			for(CartDTO cart : list) {
				totalPrice +=(cart.getModelCount()*cart.getModelPrice());
				
				System.out.println("곱하기" + cart.getModelCount()*cart.getModelPrice());
				System.out.println("totalPrice" + totalPrice);
				System.out.println("cart.getModelCount()" + cart.getModelCount());
				System.out.println("cart.getModelPrice()" + cart.getModelPrice());
			}
			

		}

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

		//이메일 ID
		String orderEmail = request.getParameter("orderEmail");
		String emailSelect = request.getParameter("emailSelect");
		//String deliverEmail = request.getParameter("deliverEmail");
		//String deliverEmailSelect = request.getParameter("deliverEmailSelect");
		//String pickupEmail = request.getParameter("pickupEmail");
		//String pickupEmailSelect = request.getParameter("pickupEmailSelect");

		//if(deliverEmail == null || deliverEmail =="") {//&& deliverEmailSelect==null
		//   orderEmail=pickupEmail;
		//   //emailSelect=pickupEmailSelect;
		//}else if(pickupEmail == null || pickupEmail ==""){// && pickupEmailSelect == null
		//   orderEmail=deliverEmail;
		//   //emailSelect=deliverEmailSelect;
		//}


		//이메일 하나로 모으기
		String realEmail = orderEmail+emailSelect;

		//System.out.println("realEmail = " + realEmail);
		//System.out.println("deliverEmail = " + deliverEmail);
		//System.out.println("emailSelect = " + emailSelect);
		//System.out.println("pickupEmail = " + pickupEmail);
		//System.out.println("emailSelect = " + emailSelect);

		//휴대폰번호
		String orderPhone = request.getParameter("orderPhone");
		//String deliverPhone = request.getParameter("deliverPhone");
		//String pickupPhone = request.getParameter("pickupPhone");

		//if(deliverPhone == null || deliverPhone=="") {
		//   orderPhone = pickupPhone;
		//}else if(pickupPhone == null || pickupPhone=="") {
		//   orderPhone = deliverPhone;
		//}

		//System.out.println("orderPhone = " + orderPhone);
		//System.out.println("deliverPhone = " + deliverPhone);
		//System.out.println("pickupPhone = " + pickupPhone);


		
		
		orderState="상품준비중";

		//DTO객체 생성
		OrderDTO dto =
				new OrderDTO(memberGuest, orderName, realAddr, orderState, realEmail, orderPhone, totalPrice);

		/**
		 * OrderService 호출 - 주문테이블에 등록하기
		 */
		System.out.println("OrderController의 주문.....................");
		int result = orderService.insert(dto, list, emailId);//ㅣlist는 cartList정보

		PrintWriter out = response.getWriter();
		out.print(result);

		//OrderService 호출 - 주문내역 메일 보내기
		//orderService.sendEmail(dto);

	}
	
	/**
	 * 본인의 주문내역 조회(비회원 - 주문번호, 이메일로 확인 후 페이지 표시)
	 * @throws SQLException 
	 * */
	public void getOrders(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		response.setContentType("text/html;charset=UTF-8");   
		
		String orderNum = request.getParameter("orderNum");
		String realEmail = request.getParameter("realEmail");
		
		System.out.println("controller_searchByOrderNum확인= "+orderNum+","+realEmail);
		
		List<OrderDetailDTO> list = orderService.getOrders(orderNum, realEmail);
		
		JSONArray arr = JSONArray.fromObject(list);
		
		System.out.println("컨트롤러쪽 arr 확인 : "+arr);
		
		PrintWriter out = response.getWriter();
		out.print(arr);
		
		
	}


}