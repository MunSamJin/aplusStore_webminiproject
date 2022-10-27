package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "session")
public class SessionCheckFilter implements Filter {

    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        String key = request.getParameter("key");

        if(key==null || key.equals("item")){
            //인증된 사용자만 해라..!

            HttpServletRequest req = (HttpServletRequest) request;

            HttpSession session = req.getSession();
            if(session.getAttribute("adminLogin")==null){
                req.setAttribute("errorMsg","관리자 로그인하고 이용해주세용!🤖");
                req.getRequestDispatcher("error/adminError.jsp").forward(request, response);

                return; //함수를 빠져나가라 -> 꼭 있어야함! 안그러면
            }
        }

        chain.doFilter(request, response);
    }
}
