package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mail.LoginMail;


public class UserAjaxController implements AjaxController {
	
	LoginMail loginMail = new LoginMail();
	@Override
	public void handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


	}
<<<<<<< HEAD
	/*
=======
	
>>>>>>> 1031-ys
	public void checkEmail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	 boolean succmessage = true;
	 boolean failmessage = true;
<<<<<<< HEAD
	 String Id = request.getParameter("emailId");
	 String email = request.getParameter("email");
=======
	 String Id = request.getParameter("emailId");//아이디(이메일)
	 String email = request.getParameter("email");//인증하기 위한 이메일
>>>>>>> 1031-ys
	 
	 System.out.println("Ajax Id =" + Id);
	 System.out.println("Ajax email =" + email);
	 
	 PrintWriter out = response.getWriter();
	 if(Id.equals(email)) { //equals
<<<<<<< HEAD
		int mailNum = loginMail.mailSend(email);
		
		//HttpSession session = request.getSession();
		//session.setAttribute("mailNum", mailNum);
		
		request.setAttribute("mailNum", mailNum);
		out.println(succmessage);
	   }else out.println(failmessage);
	}
 */
=======
		int mailNum = loginMail.mail(email);
		
		//HttpSession session = request.getSession(); 이렇게 세션 저장 가능할까?
		//session.setAttribute("mailNum", mailNum);
		
		out.println(mailNum);
	   }else out.println(failmessage);
	}
 
>>>>>>> 1031-ys
}
