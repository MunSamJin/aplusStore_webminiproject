package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import java.io.IOException;

@WebFilter(
        filterName = "encoding",
        initParams = {
                @WebInitParam(name = "encoding", value = "UTF-8")
        }
)
public class EncodingFilter implements Filter {
    private String encoding;

    public void init(FilterConfig fConfig) throws ServletException {
         encoding = fConfig.getInitParameter("encoding");
        System.out.println(encoding);


    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        //사전처리
        request.setCharacterEncoding(encoding);

        chain.doFilter(request, response);

        // 사후 처리
    }
}
