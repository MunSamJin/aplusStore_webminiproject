package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * �������� ����ϱ� ���ؼ� interface �����.
 * DispatcherServlet.java ��� Controller ����
 */
public interface AjaxController {
	void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
