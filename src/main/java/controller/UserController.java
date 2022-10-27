package controller;

import java.io.IOException;
import java.io.PrintWriter;
<<<<<<< HEAD
=======
import java.net.Authenticator;
import java.util.Random;
>>>>>>> merge221027

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
<<<<<<< HEAD
=======
//import javax.websocket.Session;
>>>>>>> merge221027

import dao.UserDAO;
import dao.UserDAOImpl;
import dto.UserDTO;
<<<<<<< HEAD
=======
//import email.MailTest;
>>>>>>> merge221027
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
		 
<<<<<<< HEAD
		 String emailId = request.getParameter("emailId");
=======
		 String id = request.getParameter("id");
>>>>>>> merge221027
		 String pwd = request.getParameter("pwd");
		 String addr = request.getParameter("addr");
		 String phone = request.getParameter("phone");
	   
	    
<<<<<<< HEAD
		 UserDTO dto = new UserDTO(emailId, pwd, addr, phone);
=======
		 UserDTO dto = new UserDTO(id, pwd, addr, phone);
>>>>>>> merge221027
		 int result = userDAO.update(dto);
	
		 PrintWriter out = response.getWriter();
		 out.println(result);
		 
	 }
	 
	 /**
	  *  회원가입
	  */
	 public void insert(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
		
		 
<<<<<<< HEAD
		 String emailId = request.getParameter("emailId");
=======
		 String id = request.getParameter("id");
>>>>>>> merge221027
		 String pwd = request.getParameter("pwd");
		 String name = request.getParameter("name");
		 String addr = request.getParameter("addr");
		 String phone = request.getParameter("phone");
		 
<<<<<<< HEAD
		 
		 UserDTO dto = new UserDTO(emailId, phone, pwd, name, addr);
		 //int result = userService.insert(dto);
	
=======
		 UserDTO dto = new UserDTO(id, pwd, name, addr, phone);
		 int result = userDAO.insert(dto);
		 
		 PrintWriter out = response.getWriter();
		 out.println(result); //0 , 1
		 
>>>>>>> merge221027
		 
	 }
	 
	 /**
	  *  로그인
	  */
	 
	 public ModelAndView login(HttpServletRequest request, HttpServletResponse response)
				throws Exception {
		 
		 //두 개의 전송 되는 값을 받는다.
<<<<<<< HEAD
		 String emailId = request.getParameter("emailId");
		 String pwd = request.getParameter("pwd");
		 
		 System.out.println("emailId = " + emailId);
		 System.out.println("pwd = " + pwd);
		 //서비스 호출
		 UserDTO dto = userService.loginCheck(new UserDTO(emailId, pwd));
		 
		 //로그인 성공하면 세션에 정보를 저장.
		 HttpSession session = request.getSession();
		 session.setAttribute("emailId", dto.getEmailId());
		 session.setAttribute("emailName", dto.getName());
		 System.out.println("session = " + session );
=======
		 String id = request.getParameter("userId");
		 String pwd = request.getParameter("pwd");
		 
		 //서비스 호출
		 UserDTO dto = userService.loginCheck(new UserDTO(id, pwd));
		 
		 //로그인 성공하면 세션에 정보를 저장.
		 HttpSession session = request.getSession();
		 session.setAttribute("emailId", dto);
		 session.setAttribute("emailName", dto.getName());
>>>>>>> merge221027
		 
		return new ModelAndView("index.jsp", true);
		 
	 }
	 
	 /**
	  *  로그아웃
	  */
	 
<<<<<<< HEAD
	 public ModelAndView logout(HttpServletRequest request, HttpServletResponse response)
=======
	 public void logout(HttpServletRequest request, HttpServletResponse response)
>>>>>>> merge221027
				throws Exception {
		 
		 //모든 세션의 정보를 삭제한다.
		 request.getSession().invalidate();
		 
		 
<<<<<<< HEAD
	 
		 return new ModelAndView("index.jsp", true);
=======
		//redirect방식에서 어떻게 바꿔주지?
		 request.getRequestDispatcher("index.jsp").forward(request, response);
>>>>>>> merge221027
	 }
	
	 /**
	  *  아이디 찾기
	  */
	 
	 
	 public void lookforId(HttpServletRequest request, HttpServletResponse response)
				throws Exception {
		 
		 
		String name = request.getParameter("name");
<<<<<<< HEAD
		String emailId = request.getParameter("emailId");
	
		UserDTO dto = userService.lookforId(new UserDTO(emailId, name));
=======
		String id = request.getParameter("id");
	
		UserDTO dto = userService.lookforId(new UserDTO(id, name));
>>>>>>> merge221027
		
		
	 }
  
	 /**
	  * 비밀번호 찾기
	  */

	 public void lookforPwd(HttpServletRequest request, HttpServletResponse response)
				throws Exception {
		
<<<<<<< HEAD
		 String emailId = request.getParameter("emailId");
=======
		 String id = request.getParameter("id");
>>>>>>> merge221027
		 String phone = request.getParameter("phone");
		 
		 //UserDTO dto = userService.
		 
	 }

	 /**
	  *  중복된 아이디가 있는지 체크
	  */

	 public void idCheck(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
		 response.setContentType("text/html;charset=UTF-8");
		 
<<<<<<< HEAD
		 String emailId = request.getParameter("emailId");
		 boolean result = userDAO.idCheck(emailId);
=======
		 String id = request.getParameter("id");
		 boolean result = userDAO.idCheck(id);
>>>>>>> merge221027
		
		 PrintWriter out = response.getWriter();
		 
		 if(result) out.print("중복입니다.");
		 else out.print("사용가능합니다.");
		 
	 }




}