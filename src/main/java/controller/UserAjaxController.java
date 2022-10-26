package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import dao.UserDAOImpl;
import dto.UserDTO;
import service.UserService;
import service.UserServiceImpl;

public class UserAjaxController {
	private UserDAO userDAO = new UserDAOImpl();
	private	UserService userService = new UserServiceImpl();


	 public void handleRequest(HttpServletRequest request, HttpServletResponse response)
	         throws ServletException, IOException {}
	 
	 
	 /**
	  *  회원가입
	  */
	 public void insert(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
		
		 
		 String id = request.getParameter("id");
		 String pwd = request.getParameter("pwd");
		 String name = request.getParameter("name");
		 String addr = request.getParameter("addr");
		 String phone = request.getParameter("phone");
		 
		 UserDTO dto = new UserDTO(id, pwd, name, addr, phone);
		 int result = userDAO.insert(dto);
		 
		 PrintWriter out = response.getWriter();
		 out.println(result); //0 , 1
	 
	 
}
}
