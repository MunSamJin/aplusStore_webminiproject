package controller;

import dto.AdminDTO;
import dto.ItemDTO;
import net.sf.json.JSONArray;
import service.ItemService;
import service.ItemServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

public class ItemAjaxController implements AjaxController{
    private ItemService service = new ItemServiceImpl();
    @Override
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    /**
     * 관리자 페이지에서 제품 조회
     * */
    public void selectAll(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");

        System.out.println("Item Ajax controller!!!");
        List<ItemDTO> list = service.itemsSelectAll();

        //list를 응답할수 없기때문에 list를 jsonArray변환해서 보낸다.
        JSONArray arr = JSONArray.fromObject(list);

        PrintWriter out = response.getWriter();
        out.print(arr);

    }
}
