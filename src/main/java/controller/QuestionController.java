package controller;

import dto.QuestionDTO;
import net.sf.json.JSONArray;
import service.QuestionService;
import service.QuestionServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

public class QuestionController implements AjaxController{
    private QuestionService service = new QuestionServiceImpl();

    @Override
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public void selectAllByiphone(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        List<QuestionDTO> list = service.selectAllByiphone();

        JSONArray arr = JSONArray.fromObject(list);

        System.out.println(list);
        System.out.println(arr);
        PrintWriter out = response.getWriter();
        out.print(arr);


    }
}
