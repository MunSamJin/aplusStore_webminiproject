package controller;


import dto.ItemDTO;
import service.ItemService;
import service.ItemServiceImpl;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet
public class ItemReadDetailServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "items/ItemDetailPage.jsp";
        System.out.println("나야나~");
        //넘어오는 iphone14 받기 / iphone14pro /
        String modelName = req.getParameter("modelName");
        System.out.println("나야나"+modelName);

        ItemService service = new ItemServiceImpl();

        try {
            ItemDTO itemDTO = service.itemSelectBymodelName(modelName);
            req.setAttribute("itemDTO",itemDTO);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        req.getRequestDispatcher(url).forward(req,resp);
    }
}
