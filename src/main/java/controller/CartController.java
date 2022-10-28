package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import dto.CartDTO;
import net.sf.json.JSONArray;
import service.CartService;
import service.CartServiceImpl;

public class CartController implements AjaxController{
	CartService service = new CartServiceImpl();
	HttpSession session;


	/**
	 * 검색
	 */
	public void select(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		session = req.getSession();
		String emailId = (String)session.getAttribute("emailId");
		//String emailId = req.getParameter("emailId");
		
		//session
		if(emailId == null) {
			List<CartDTO> guestCartList = (List<CartDTO>)session.getAttribute("guestCartList");
			
			if(guestCartList == null) {
				guestCartList = new ArrayList<CartDTO>();
			}
			
			for(CartDTO cart : guestCartList) {
				//장바구니 상품 재고 업데이트
				cart.setModelStock(service.selectForGuest(cart.getModelName()).getModelStock());
			}
			
			JSONArray arr = JSONArray.fromObject(guestCartList);
			System.out.println("controller session json = " + arr);
			PrintWriter out = resp.getWriter();
			
			out.print(arr);
			
		} else { //db
			List<CartDTO> list = service.select(emailId);
			JSONArray arr = JSONArray.fromObject(list);
			System.out.println("controller json = " + arr);
			PrintWriter out = resp.getWriter();
			
			out.print(arr);
		}
	}




	/**
	 * 삭제
	 */
	public void delete(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		resp.setContentType("text/html;charset=UTF-8"); 
		
		session = req.getSession();
		String emailId = (String)session.getAttribute("emailId");
		//String emailId = req.getParameter("emailId");
		String modelName = req.getParameter("modelName");

		PrintWriter out = resp.getWriter();
		
		
		if(emailId == null) { //비회원
			List<CartDTO> guestCartList = (List<CartDTO>) session.getAttribute("guestCartList");
			for(CartDTO cart : guestCartList) {
				if(cart.getModelName().equals(modelName)) {
					guestCartList.remove(cart);
					out.println("삭제 되었습니다");
					break;
				}
			}
			
		} else { //회원
			service.delete(emailId, modelName);
			//service.delete(cartNum);
			
			out.println("삭제 되었습니다");
		}
		
	}


	/**
	 * 수정
	 */
	public void update(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		session = req.getSession();
		Object obj = session.getAttribute("emailId");
		//String emailId = req.getParameter("emailId");
		String modelName = req.getParameter("modelName");
		int modelCount = Integer.parseInt(req.getParameter("modelCount"));

		
		if(obj == null) {//비회원
			List<CartDTO> guestCartList = (List<CartDTO>) session.getAttribute("guestCartList");
			
			for(CartDTO cart : guestCartList) {
				if(cart.getModelName().equals(modelName)) {
					cart.setModelCount(modelCount);
					break;
				}
			}
			
		} else {//회원
			service.update(modelName, modelCount);
		}
		
	}


	@Override
	public void handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}


}
