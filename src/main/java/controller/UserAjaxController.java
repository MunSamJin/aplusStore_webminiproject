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
	/*
	public void checkEmail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	 boolean succmessage = true;
	 boolean failmessage = true;
	 String Id = request.getParameter("emailId");
	 String email = request.getParameter("email");
	 
	 System.out.println("Ajax Id =" + Id);
	 System.out.println("Ajax email =" + email);
	 
	 PrintWriter out = response.getWriter();
	 if(Id.equals(email)) { //equals
		int mailNum = loginMail.mailSend(email);
		
		//HttpSession session = request.getSession();
		//session.setAttribute("mailNum", mailNum);
		
		request.setAttribute("mailNum", mailNum);
		out.println(succmessage);
	   }else out.println(failmessage);
	}
 */
}
