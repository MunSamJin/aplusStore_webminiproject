package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.CartDTO;
import service.CartService;
import service.CartServiceImpl;

public class CartInsertController implements Controller {
	CartService service = new CartServiceImpl();

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		return null;
	}



	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("emailId");
		//String emailId = request.getParameter("emailId");
		String modelName = request.getParameter("modelName");

		System.out.println("CartInsert........");


		//session에 저장
		if(obj == null) {
			List<CartDTO> guestCartList = (List<CartDTO>) session.getAttribute("guestCartList");

			if(guestCartList == null) {//비회원 장바구니 만들기
				guestCartList = new ArrayList<CartDTO>();
				session.setAttribute("guestCartList", guestCartList);
				
				CartDTO cart = service.selectForGuest(modelName);
				guestCartList.add(cart);

			} else {

				//modelName 상품 있는지 확인
				int n = 0;
				for(CartDTO cart : guestCartList) {
					n++;
					if(cart.getModelName().equals(modelName)) {
						//같은 상품이 있으니 수량 + 1
						cart.setModelCount(cart.getModelCount()+1);
						break;
					}
				}

				//새로 추가
				if(n == guestCartList.size()) {
					session.setAttribute("guestCartList", guestCartList);
					CartDTO cart = service.selectForGuest(modelName);
					guestCartList.add(cart);
				}
			}

			System.out.println(guestCartList);
			return new ModelAndView("cart/cart.jsp", true);

		} else { //회원
           String emailId = (String)obj;
			service.insert(modelName, emailId);
			return new ModelAndView("cart/cart.jsp", true);
		}
	}

}
