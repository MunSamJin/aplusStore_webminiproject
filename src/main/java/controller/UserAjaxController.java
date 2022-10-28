package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mail.Mail;

public class UserAjaxController implements AjaxController {
	private Mail mail = new Mail();
	
	@Override
	public void handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


	}
	
	public void checkEmail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	 boolean succmessage = true;
	 boolean failmessage = true;
	 String Id = request.getParameter("emailId");
	 String email = request.getParameter("email");
	 PrintWriter out = response.getWriter();
	 if(Id == email) {
		mail.sendEmail(email);
		out.println(succmessage);
	   }else out.println(failmessage);

	}
}
