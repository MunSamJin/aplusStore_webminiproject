package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import javax.websocket.Session;


import dao.UserDAO;
import dao.UserDAOImpl;
import dto.UserDTO;

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

		 String emailId = request.getParameter("emailId");
		 String pwd = request.getParameter("pwd");
		 String addr = request.getParameter("addr");
		 String phone = request.getParameter("phone");

		 UserDTO dto = new UserDTO(emailId, phone, pwd, addr);

		 //userService.update(dto);
		 
		 //int result = userDAO.update(dto);
		 
	 }
	 
	 /**
	  *  회원가입
	  */
	 public ModelAndView insert(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException, SQLException {

		 String emailId = request.getParameter("emailId");
		 String pwd = request.getParameter("pwd");
		 String name = request.getParameter("name");
		 String addr = request.getParameter("addr");
		 String phone = request.getParameter("phone");
		 

		 UserDTO dto = new UserDTO(emailId, phone, pwd, name, addr);
		 //int result = userService.insert(dto);
	

		 userService.insert(dto);
		 
		 return new ModelAndView("user/login.jsp", true);

		 
	 }
	 
	 /**
	  *  로그인
	  */
	 
	 public ModelAndView login(HttpServletRequest request, HttpServletResponse response)
				throws Exception {
		 
		 //두 개의 전송 되는 값을 받는다.

		 String emailId = request.getParameter("emailId");
		 String pwd = request.getParameter("pwd");
		 
		 System.out.println("emailId = " + emailId);
		 System.out.println("pwd = " + pwd);
		 //서비스 호출
		 UserDTO dto = userService.loginCheck(new UserDTO(emailId, pwd));
		 
		 //로그인 성공하면 세션에 정보를 저장.
		 HttpSession session = request.getSession();
		 session.setAttribute("emailId", dto.getEmailId());
		 session.setAttribute("emailPh", dto.getPhone());
		 session.setAttribute("emailPwd", dto.getPwd());
		 session.setAttribute("emailName", dto.getName());
		 session.setAttribute("emailAd", dto.getAddr() );
		 System.out.println("session = " + session );

		 
		return new ModelAndView("index.jsp", true);
		 
	 }
	 
	 /**
	  *  로그아웃
	  */
	 

	 public ModelAndView logout(HttpServletRequest request, HttpServletResponse response)


				throws Exception {
		 
		 //모든 세션의 정보를 삭제한다.
		 request.getSession().invalidate();
		 

	 
		 return new ModelAndView("index.jsp", true);

	 }
	
	 /**
	  *  아이디 찾기
	  */
	 
	 
	 public void lookforId(HttpServletRequest request, HttpServletResponse response)
				throws Exception {
		 
		 
		String name = request.getParameter("name");

		String emailId = request.getParameter("emailId");
	
		UserDTO dto = userService.lookforId(new UserDTO(emailId, name));

		
	 }
  
	 /**
	  * 비밀번호 찾기
	  */

	 public void lookforPwd(HttpServletRequest request, HttpServletResponse response)
				throws Exception {
		

		 String emailId = request.getParameter("emailId");

		 String phone = request.getParameter("phone");
		 
		 //UserDTO dto = userService.
		 
	 }

	 /**
	  *  중복된 아이디가 있는지 체크
	  */

	 public void idCheck(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
		 response.setContentType("text/html;charset=UTF-8");
		 

		 String emailId = request.getParameter("emailId");
		 boolean result = userDAO.idCheck(emailId);

		
		 PrintWriter out = response.getWriter();
		 
		 if(result) out.print("중복입니다.");
		 else out.print("사용가능합니다.");
		 
	 }




}