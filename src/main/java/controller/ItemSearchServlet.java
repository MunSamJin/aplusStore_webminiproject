package controller;

import dto.ItemDTO;
import service.ItemService;
import service.ItemServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet
public class ItemSearchServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "items/searchResultPage.jsp";

        //넘어오는 검색결과 받기
        String searchResult = req.getParameter("search");

        System.out.println("검색어 = "+searchResult);
        ItemService service = new ItemServiceImpl();

//        if(searchResult.equals("아이폰") || searchResult.equals("iphone")){
//
//        }

        try {
            List<ItemDTO> list = service.itemSeachBymodelName(searchResult);
            req.setAttribute("list",list);
            System.out.println("서블릿"+list.size());

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        req.getRequestDispatcher(url).forward(req,resp);
    }
}
