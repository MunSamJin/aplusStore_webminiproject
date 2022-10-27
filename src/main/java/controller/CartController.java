package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
=======
import javax.servlet.http.HttpSession;

>>>>>>> merge221027
import dto.CartDTO;
import net.sf.json.JSONArray;
import service.CartService;
import service.CartServiceImpl;

public class CartController implements AjaxController{
	CartService service = new CartServiceImpl();
<<<<<<< HEAD

=======
	HttpSession session;
>>>>>>> merge221027
	

	/**
	 * 검색
	 */
	public void select(HttpServletRequest req, HttpServletResponse resp) throws Exception{
<<<<<<< HEAD
		String emailId = req.getParameter("emailId");
		//HttpSession session = req.getSession();
		//String sessionId = (String)session.getAttribute("emailId");
=======
		session = req.getSession();
		//String emailId = (String)session.getAttribute("emailId");
		String emailId = req.getParameter("emailId");
		
		//session
		/*if(emailId == null) {
			List<CartDTO> guestCartList = (List<CartDTO>)session.getAttribute("guestCartList");
			guestCartList 
			
		} else {
			
		}*/
>>>>>>> merge221027
		
		List<CartDTO> list = service.select(emailId);
		JSONArray arr = JSONArray.fromObject(list);
		System.out.println("controller json = " + arr);
		PrintWriter out = resp.getWriter();
		
		out.print(arr);
<<<<<<< HEAD
=======
		
		
>>>>>>> merge221027
	}
	
	
	/**
	 * 재고 확인(품절 여부)
	 */
<<<<<<< HEAD
	public void checkStock(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String emailId = req.getParameter("emailId");
		//HttpSession session = req.getSession();
		//String sessionId = (String)session.getAttribute("emailId");
		
		List<CartDTO> list = service.select(emailId);
		JSONArray arr = JSONArray.fromObject(list);
		System.out.println("controller json = " + arr);
		PrintWriter out = resp.getWriter();
		
		out.print(arr);
	}
=======
	/*public void checkStock(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String emailId = req.getParameter("modelName");
		
		List<CartDTO> list = service.select(emailId);
		System.out.println("controller stock = " + );
		PrintWriter out = resp.getWriter();
		
		out.print(arr);
	}*/
>>>>>>> merge221027

	
	/**
	 * 입력
	 */
	/*public ModelAndView insert(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String emailId = req.getParameter("emailId");
		String modelName = req.getParameter("modelName");
		//String modelCount = req.getParameter("modelCount");
		
		//장바구니에 이미 있는 이메일&상품이면 수량 추가로 진행됨
		 
		service.insert(modelName, emailId);
		service.select(emailId);
		
		return null;
	}*/

	
	/**
	 * 삭제
	 */
	public void delete(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		resp.setContentType("text/html;charset=UTF-8"); 
		
		//String emailId = req.getParameter("emailId");
		String cartNum = req.getParameter("cartNum");
		
		//service.delete(emailId, modelNum);
		service.delete(cartNum);
		PrintWriter out = resp.getWriter();
		out.println("삭제 되었습니다");
	}

	
	/**
	 * 수정
	 */
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
