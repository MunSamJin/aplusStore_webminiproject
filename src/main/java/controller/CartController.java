package controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.CartDTO;
import dto.ItemDTO;
import service.CartService;
import service.CartServiceImpl;

public class CartController {
	CartService service = new CartServiceImpl();
	
	/**
	 * 장바구니 조회
	 */
	public void select(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String emailId = req.getParameter("emailId");
		
		List<CartDTO> list = service.select(emailId);
		PrintWriter out = resp.getWriter();
		
		out.print(list);
	}
	
	
	/**
	 * 장바구니 추가
	 */
	public void insert(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String emailId = req.getParameter("emailId");
		String modelNum = req.getParameter("modelNum");
		//String modelCount = req.getParameter("modelCount");
		
		if(service.select(emailId)!=null){//select = 있으면 수량 update로 넘어가기
			update(req, resp);
		}
		service.insert(modelNum, emailId);
		req.getRequestDispatcher("../cart/cartList.html");
	}

	
	
	/**
	 * 장바구니 삭제
	 */
	public void delete(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String emailId = req.getParameter("emailId");
		String modelNum = req.getParameter("modelNum");
		
		service.delete(emailId, modelNum);
		req.getRequestDispatcher("../cart/cartList.html");
	}

	
	
	/**
	 * 장바구니 수정
	 */
	public void update(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String cartNum = req.getParameter("cartNum");
		String modelCount = req.getParameter("modelCount");
		service.update(cartNum, Integer.parseInt(modelCount));
		
	}
}
