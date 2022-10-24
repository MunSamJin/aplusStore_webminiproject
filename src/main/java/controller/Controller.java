package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 다형성을 사용하기 위해서 interface 사용함.
 * DispatcherServlet.java 대신 Controller 역할
 */
public interface Controller {
	ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
