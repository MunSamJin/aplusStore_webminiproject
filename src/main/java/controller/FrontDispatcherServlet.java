package controller;

import java.io.IOException;
import java.lang.reflect.Method;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.QnaDTO;

/**
 *사용자의 모든 요청을 처리할 진입점 Controller이다(FrontController의 역할한다)
 */

@WebServlet(urlPatterns = "/front", loadOnStartup = 1)
public class FrontDispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String, Controller> map;
	private Map<String, Class<?>> clzMap;
	
	
	
	@Override
		public void init() throws ServletException {
			ServletContext application = super.getServletContext();
			
			map = (Map<String, Controller>)application.getAttribute("map");
			clzMap = (Map<String, Class<?>>)application.getAttribute("clzMap");

		}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String key = request.getParameter("key"); 
		String methodName = request.getParameter("methodName");
		System.out.println("프론트 디스패쳐");

		
		System.out.println("key = " + key + ", methodName = " + methodName);
		
		try {
			Controller con = map.get(key);
			System.out.println(con);
			Class<?> clz = clzMap.get(key);
			Method method = clz.getMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
			ModelAndView mv = (ModelAndView)method.invoke(con, request, response);
			
			
			if(mv.isRedirect()) {
				response.sendRedirect(mv.getViewName());
			}else {
				request.getRequestDispatcher(mv.getViewName()).forward(request, response);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("errorMsg", e.getMessage() );
			request.getRequestDispatcher("error/error.jsp").forward(request, response);
		}
		
	}//serviceEnd
	
	public interface ElectronicsService{
		/**
		 * ElectronicsDAOImpl�� ��緹�ڵ� �˻��ϴ� �޼ҵ� ȣ��
		 * */
	    List<QnaDTO> selectAll() throws SQLException;
	}
	
	
}
