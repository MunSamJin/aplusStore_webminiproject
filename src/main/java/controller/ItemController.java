package controller;

import dto.ItemDTO;
import service.ItemService;
import service.ItemServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class ItemController implements Controller {
    @Override
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return null;
    }


    public ModelAndView ItemReadByCategory(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {

        String url = "items/acc_band.jsp";

        //넘어오는 iphone14 받기 / iphone14pro /
        String category = req.getParameter("category");
        String miniCategory = req.getParameter("gps");
        System.out.println("나야나" + category + "," + miniCategory);

        ItemService service = new ItemServiceImpl();


        try {
            List<ItemDTO> list = service.itemSelectByCategory(category, miniCategory);
            req.setAttribute("list", list);
            System.out.println("서블릿" + list.size());

        } catch (
                SQLException e) {
            throw new RuntimeException(e);
        }

        if (miniCategory.equals("cable")) {
            url = "items/acc_cable.jsp";
        } else if (miniCategory.equals("case")) {
            url = "items/acc_case.jsp";
        }

//        req.getRequestDispatcher(url).forward(req,resp);
        return new ModelAndView(url);
    }

    public ModelAndView ItemReadDetail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        String url = "items/ItemDetailPage.jsp";

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

        return new ModelAndView(url);
    }
    public ModelAndView ItemSearch(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        resp.setContentType("text/html;charset=UTF-8");
        String url = "items/searchResultPage.jsp";

        //넘어오는 검색결과 받기
        String searchResult = req.getParameter("search");

        System.out.println("검색어 = "+searchResult);
        ItemService service = new ItemServiceImpl();

        // 나중에 Map list 활용해서 검색 키워드를 추천해줄 수 있도록 해보자 - version 업으로
        if(searchResult.equals("아이폰")){
            searchResult = "iphone";
        }else if(searchResult.equals("시계") || searchResult.equals("워치")){
            searchResult = "watch";
        }else if(searchResult.equals("에어팟")){
            searchResult = "airpods";
        }else if(searchResult.equals("프로")){
            searchResult = "pro";
        }else if(searchResult.equals("케이스")){
            searchResult = "case";
        }



        try {
            List<ItemDTO> list = service.itemSeachBymodelName(searchResult);
            req.setAttribute("list",list);
            System.out.println("서블릿"+list.size());

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return new ModelAndView(url);
    }
}