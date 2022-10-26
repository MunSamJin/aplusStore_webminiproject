package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.Authenticator;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import dao.UserDAO;
import dao.UserDAOImpl;
import dto.UserDTO;
import email.MailTest;
import service.UserService;
import service.UserServiceImpl;

public class UserController implements Controller {
	private UserDAO userDAO = new UserDAOImpl();
	private	UserService userService = new UserServiceImpl();
	
	  @Override
	   public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
	         throws ServletException, IOException {//controller에 있는 request, response를 쓰기 위해서 구현함.
		  
	      	return null;
	   }
	  
	
	 
	 /**
	  *  회원정보 수정
	  */
	 
	 public void update(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
		 
		 String id = request.getParameter("id");
		 String pwd = request.getParameter("pwd");
		 String addr = request.getParameter("addr");
		 String phone = request.getParameter("phone");
	   
	    
		 UserDTO dto = new UserDTO(id, pwd, addr, phone);
		 int result = userDAO.update(dto);
	
		 PrintWriter out = response.getWriter();
		 out.println(result);
		 
	 }
	 
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
	 
	 /**
	  *  로그인
	  */
	 
	 public ModelAndView login(HttpServletRequest request, HttpServletResponse response)
				throws Exception {
		 
		 //두 개의 전송 되는 값을 받는다.
		 String id = request.getParameter("userId");
		 String pwd = request.getParameter("pwd");
		 
		 //서비스 호출
		 UserDTO dto = userService.loginCheck(new UserDTO(id, pwd));
		 
		 //로그인 성공하면 세션에 정보를 저장.
		 HttpSession session = request.getSession();
		 session.setAttribute("emailId", dto);
		 session.setAttribute("emailName", dto.getName());
		 
		return new ModelAndView("index.jsp", true);
		 
	 }
	 
	 /**
	  *  로그아웃
	  */
	 
	 public void logout(HttpServletRequest request, HttpServletResponse response)
				throws Exception {
		 
		 //모든 세션의 정보를 삭제한다.
		 request.getSession().invalidate();
		 
		 
		//redirect방식에서 어떻게 바꿔주지?
		 request.getRequestDispatcher("index.jsp").forward(request, response);
	 }
	
	 /**
	  *  아이디 찾기
	  */
	 
	 
	 public void lookforId(HttpServletRequest request, HttpServletResponse response)
				throws Exception {
		 
		 
		String name = request.getParameter("name");
		String id = request.getParameter("id");
	
		UserDTO dto = userService.lookforId(new UserDTO(id, name));
		
		
	 }
  
	 /**
	  * 비밀번호 찾기
	  */

	 public void lookforPwd(HttpServletRequest request, HttpServletResponse response)
				throws Exception {
		
		 String id = request.getParameter("id");
		 String phone = request.getParameter("phone");
		 
		 //UserDTO dto = userService.
		 
	 }

	 /**
	  *  중복된 아이디가 있는지 체크
	  */

	 public void idCheck(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
		 response.setContentType("text/html;charset=UTF-8");
		 
		 String id = request.getParameter("id");
		 boolean result = userDAO.idCheck(id);
		
		 PrintWriter out = response.getWriter();
		 
		 if(result) out.print("중복입니다.");
		 else out.print("사용가능합니다.");
		 
	 }




}