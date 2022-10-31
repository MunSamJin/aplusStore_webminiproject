package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mail.LoginMail;


public class UserAjaxController implements AjaxController {
	
	LoginMail loginMail = new LoginMail();
	
	public int num = 0;
	
	@Override
	public void handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


	}
	
	public void checkEmail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	 boolean succmessage = true;
	 boolean failmessage = true;
	 String emailId = request.getParameter("emailId");//아이디(이메일)
	 String email = request.getParameter("email");//인증하기 위한 이메일
	 
	 System.out.println("Ajax Id =" + emailId);
	 System.out.println("Ajax email =" + email);
	 
	 PrintWriter out = response.getWriter();
	 if(emailId.equals(email)) { //equals
		int num = loginMail.mail(emailId);
		out.println(num);
		
	 }else {
		 out.println(failmessage);
	 }
	
	}	
 
}
