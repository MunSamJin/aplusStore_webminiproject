package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.CartDTO;
import net.sf.json.JSONArray;
import service.CartService;
import service.CartServiceImpl;

public class CartController implements AjaxController{
	CartService service = new CartServiceImpl();
	
	
	public void select(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String emailId = req.getParameter("emailId");
		
		List<CartDTO> list = service.select(emailId);
		JSONArray arr = JSONArray.fromObject(list);
		PrintWriter out = resp.getWriter();
		
		out.print(arr);
	}
	

	public void insert(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String emailId = req.getParameter("emailId");
		String modelNum = req.getParameter("modelNum");
		//String modelCount = req.getParameter("modelCount");
		
		if(service.select(emailId)!=null){//select = �엳�쑝硫� �닔�웾 update濡� �꽆�뼱媛�湲�
			update(req, resp);
		}
		service.insert(modelNum, emailId);
	}


	public void delete(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String emailId = req.getParameter("emailId");
		String modelNum = req.getParameter("modelNum");
		
		service.delete(emailId, modelNum);
	}


	public void update(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String cartNum = req.getParameter("cartNum");
		String modelCount = req.getParameter("modelCount");
		service.update(cartNum, Integer.parseInt(modelCount));
		
	}


	@Override
	public void handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}


}
