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
import mail.LookforAccount;
import service.UserService;
import service.UserServiceImpl;

public class UserController implements Controller {
	private UserDAO userDAO = new UserDAOImpl();
	private	UserService userService = new UserServiceImpl();
	// LoginMail mail = new LoginMail();
	 //LookforAccount lookforAccount = new LookforAccount();
	
	
	  @Override
	   public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
	         throws ServletException, IOException {//controller에 있는 request, response를 쓰기 위해서 구현함.
		  
	      	return null;
	   }
	  
	
	 
	 /**
	  *  회원정보 수정
	  */
	 
	 public ModelAndView update(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException, SQLException {

		 String emailId = request.getParameter("emailId");
		 String pwd = request.getParameter("pwd");
		 String addr = request.getParameter("addr");
		 String phone = request.getParameter("phone");

		 UserDTO dto = new UserDTO(emailId, phone, pwd, addr);

		 userService.update(dto);
		 
		 
		 return new ModelAndView("index.jsp", true);
	 }
	 
	 /**
	  *  회원가입
	  */
	 public ModelAndView insert(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException, SQLException {

		 PrintWriter out = response.getWriter();
		 
		 String emailId = request.getParameter("emailId");
		 String pwd = request.getParameter("pwd");
		 String name = request.getParameter("name");
		 String addr = request.getParameter("addr");
		 String phone = request.getParameter("phone");
		 int comfEmail = Integer.parseInt(request.getParameter("email"));//고객이 입력한 인증번호
		 int mailNum = Integer.parseInt(request.getParameter("${mailNum}"));//인증번호
		 
		 System.out.println(comfEmail);
		 System.out.println(mailNum);
		 
		 UserDTO dto = new UserDTO(emailId, phone, pwd, name, addr);
		 
		 if(mailNum == comfEmail) {
			 userService.insert(dto);
			 return new ModelAndView("user/login.jsp", true);
		 }else {
			 out.println("<script>alert('가입하신 이메일로 아이디가 전송되었습니다.');</script>");
			 return new ModelAndView("user/register.jsp", true);
		 }
		

		
		 
	 }
	 
	 
	 
	 
	 /**
	  *  로그인
	  */
	 
	  public ModelAndView login(HttpServletRequest request, HttpServletResponse response)
				throws Exception {
		 
		 //두 개의 전송 되는 값을 받는다.

		 String emailId = request.getParameter("emailId");
		 String pwd = request.getParameter("pwd");
		 UserDTO dto = null;
		 
		 System.out.println("emailId = " + emailId);
		 System.out.println("pwd = " + pwd);
		 //서비스 호출
		 dto = new UserDTO(emailId, pwd);
			dto  =	userService.loginCheck(dto);
		 System.out.println("로그인 컨트롤러 dto = " + dto);
		 
		 //로그인 성공하면 세션에 정보를 저장.
		 HttpSession session = request.getSession();
		 session.setAttribute("emailId", dto.getEmailId());
		 session.setAttribute("emailPh", dto.getPhone());
		 session.setAttribute("emailPwd", dto.getPwd());
		 session.setAttribute("emailName", dto.getName());
		 session.setAttribute("emailAddr", dto.getAddr() );
		 
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
	 
	 
	 public ModelAndView lookforId(HttpServletRequest request, HttpServletResponse response)
				throws Exception {
		PrintWriter out = response.getWriter();
		
		String phone = request.getParameter("phone");
		String emailId = request.getParameter("emailId");
		String name = null;
		
		UserDTO userdto = null;
		userdto = userDAO.lookforId(emailId, phone);
		
		System.out.println("userdto = " + userdto);
		if(userdto != null) {
			out.println("<script>alert('가입하신 이메일로 아이디가 전송되었습니다.');</script>");
			//lookforAccount.lookforAccount(emailId, name);
		 
		 
		}else {
			out.println("<script>alert('아이디가 존재하지 않습니다.')</script>");
		}
	
		return new ModelAndView("login.jsp", true);
	 }
  
	 /**
	  * 비밀번호 찾기
	  */

	 public ModelAndView lookforPwd(HttpServletRequest request, HttpServletResponse response)
				throws Exception {
		
		 PrintWriter out = response.getWriter();
			
			String name = request.getParameter("name");
			String emailId = request.getParameter("emailId");
			
			UserDTO userdto = null;
			userdto = userDAO.lookforPwd(emailId, name);
			
			if(userdto != null) {
				out.println("<script>alert('가입하신 이메일로 임시 비밀번호 전송되었습니다.');</script>");
				//int num = lookforAccount.lookforAccount(emailId, name); //num은임시비밀번호
				HttpSession session = request.getSession();
				//session.setAttribute("num", num);//이렇게 저장이 될까?
				
			}else {
				out.println("<script>alert('아이디가 존재하지 않습니다.')</script>");
			}
		
			return new ModelAndView("login.jsp", true);
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
	 
	 /**
	  *  이메일 인증
	  */
	 
	 
	
	 
}