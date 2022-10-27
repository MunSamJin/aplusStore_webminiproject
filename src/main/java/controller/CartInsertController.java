package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String emailId = request.getParameter("emailId");
		String modelName = request.getParameter("modelName");
		//String modelCount = req.getParameter("modelCount");
		
		System.out.println("CartInsert........");
		
		service.insert(modelName, emailId);
		return new ModelAndView("cart/cart.jsp", true);
	}

}
