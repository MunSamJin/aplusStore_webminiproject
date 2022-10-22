package controller;

import dao.ItemDAO;
import dao.ItemDAOImpl;
import dto.ItemDTO;
import service.ItemService;
import service.ItemServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/ItemReadServlet")
public class ItemReadServlet extends HttpServlet {
    private ItemService itemService = new ItemServiceImpl();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "iphone14.jsp";
        //넘어오는 iphone14 받기 / iphone14pro /
        String modelName = req.getParameter("model_name");


        List<ItemDTO> list = null;
        try {
            list = itemService.itemSelectBymodelName(modelName);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        ItemDAO dao = new ItemDAOImpl();
        if(modelName.equals("iphone14")) {

        }else if(modelName.equals("iphone14pro")){
            url = "iphone14pro.jsp";
        }else if(modelName.equals("iphone13")){
            url = "iphone13.jsp";
        }
        //... 이런식으로 추가하기



        req.setAttribute("list",list);

        req.getRequestDispatcher(url).forward(req,resp);
    }
}
