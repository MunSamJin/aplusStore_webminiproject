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
public class ItemReadByCategoryServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String url = "items/acc_band.jsp";

        //넘어오는 iphone14 받기 / iphone14pro /
        String category = req.getParameter("category");
        String miniCategory = req.getParameter("gps");
        System.out.println("나야나"+category+","+miniCategory);

        ItemService service = new ItemServiceImpl();



        try {
            List<ItemDTO> list = service.itemSelectByCategory(category, miniCategory);
            req.setAttribute("list",list);
            System.out.println("서블릿"+list.size());

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        if(miniCategory.equals("cable")){
        url = "items/acc_cable.jsp";
        }else if(miniCategory.equals("case")){
            url = "items/acc_case.jsp";
        }

        req.getRequestDispatcher(url).forward(req,resp);
    }
}
