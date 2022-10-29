package controller;

import dto.AdminLoginDTO;
import dto.ItemDTO;
import service.ItemService;
import service.ItemServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ItemController implements Controller {
    private ItemService service = new ItemServiceImpl();

    @Override
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return null;
    }


    public ModelAndView ItemReadByCategory(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        String saveDir = req.getSession().getServletContext().getRealPath("/images");
        String saveDir2 = req.getServletContext().getRealPath("/images");


        System.out.println("경로" + saveDir);
        System.out.println("경로2" + saveDir2);

        String url = "items/acc_band.jsp";

        //넘어오는 iphone14 받기 / iphone14pro /
        String category = req.getParameter("category");
        String miniCategory = req.getParameter("gps");
        System.out.println("나야나" + category + "," + miniCategory);


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
        System.out.println("나야나" + modelName);


        try {
            ItemDTO itemDTO = service.itemSelectBymodelName(modelName);
            req.setAttribute("itemDTO", itemDTO);

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

        System.out.println("검색어 = " + searchResult);


        // 나중에 Map list 활용해서 검색 키워드를 추천해줄 수 있도록 해보자 - version 업으로
        if (searchResult.equals("아이폰")) {
            searchResult = "iphone";
        } else if (searchResult.equals("시계") || searchResult.equals("워치")) {
            searchResult = "watch";
        } else if (searchResult.equals("에어팟")) {
            searchResult = "airpods";
        } else if (searchResult.equals("프로")) {
            searchResult = "pro";
        } else if (searchResult.equals("케이스")) {
            searchResult = "case";
        }


        try {
            List<ItemDTO> list = service.itemSeachBymodelName(searchResult);
            req.setAttribute("list", list);
            System.out.println("서블릿" + list.size());

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return new ModelAndView(url);
    }

    /**
     * 관리자 페이지에서 제품 조회
     */
    public ModelAndView selectAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {

        List<ItemDTO> list = service.itemsSelectAll();

        req.setAttribute("list", list);

        return null;
    }

    public ModelAndView InsertItemByAcc(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        String saveDir = req.getServletContext().getRealPath("/images");
        int maxSize = 1024 * 1024 * 100; // 100mb
        String encoding = "UTF-8";

        MultipartRequest m =
                new MultipartRequest(req, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());


        String url = "items/itemCRUD_Page.jsp";


        String modelName = m.getParameter("modelName");
        String modelPrice = m.getParameter("modelPrice");
        String modelColor = m.getParameter("modelColor");
        String mini = m.getParameter("mini");
        String modelStock = m.getParameter("modelStock");


        System.out.println(modelName + modelPrice + modelColor + mini + modelStock);

        ItemDTO itemDTO
                = new ItemDTO(modelName, Integer.parseInt(modelPrice),
                modelColor, mini,
                Integer.parseInt(modelStock));


        service.insertItemByAcc(itemDTO);


        return new ModelAndView(url);
    }

    public ModelAndView InsertItemByWatch(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        String saveDir = req.getSession().getServletContext().getRealPath("/images");
        int maxSize = 1024 * 1024 * 100; // 100mb
        String encoding = "UTF-8";

        MultipartRequest m =
                new MultipartRequest(req, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());


        String url = "items/itemCRUD_Page.jsp";

        // 넘어오는 워치 값 받기
        String modelName = m.getParameter("modelName");
        String modelPrice = m.getParameter("modelPrice");
        String modelSize = m.getParameter("modelOption");
        String modelColor = m.getParameter("modelColor");
        String gps = m.getParameter("gps");
        String modelStock = m.getParameter("modelStock");


        ItemDTO itemDTO
                = new ItemDTO(modelName, Integer.parseInt(modelPrice), modelSize,
                modelColor, gps, Integer.parseInt(modelStock));


        service.insertItemByWatch(itemDTO);


        return new ModelAndView(url);
    }

    /**
     * 관리자 로그인
     * */
    public ModelAndView AdminLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        System.out.println("로그인 호출");
        String adminID = req.getParameter("adminId");
        String adminPwd = req.getParameter("adminPwd");
        System.out.println(adminID+adminPwd);
        AdminLoginDTO admin = new AdminLoginDTO(adminID,adminPwd);


        AdminLoginDTO dbDTO = service.adminLogin(admin);

        HttpSession session = req.getSession();
//        req.setAttribute("adminLogin",dbDTO);
        session.setAttribute("adminLogin",dbDTO);

        return new ModelAndView("/items/itemCRUD_Page.jsp");
    }

    /**
     * 관리자 로그아웃
     * */
    public ModelAndView AdminLogOut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        HttpSession session = req.getSession();
        session.invalidate();

        return new ModelAndView("index.jsp", true);
    }



    /**
     * 아이템 삭제 method
     * */
    public ModelAndView deleteItem(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {

        String modelName = req.getParameter("modelName");

        int re = service.deleteItem(modelName);


        return new ModelAndView("/items/itemCRUD_Page.jsp");
    }

}