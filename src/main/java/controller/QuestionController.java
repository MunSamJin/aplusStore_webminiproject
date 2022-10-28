package controller;

import dto.QuestionDTO;
import service.QuestionService;
import service.QuestionServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class QuestionController implements Controller{
    private QuestionService service = new QuestionServiceImpl();
    @Override
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return null;
    }

    public ModelAndView readQuestion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String qNum = request.getParameter("qNum");


        System.out.println("나야con = "+qNum);



        QuestionDTO questionDTO = service.readQuestion(Integer.parseInt(qNum));

        request.setAttribute("questionDTO",questionDTO);


        return new ModelAndView("/qna/QnaRead.jsp");
    }

    public ModelAndView questionInsert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String category = request.getParameter("category");
        String subject = request.getParameter("subject");
        String content = request.getParameter("content");
        String emailId = (String) request.getSession().getAttribute("emailId");

        QuestionDTO questionDTO = new QuestionDTO(emailId,subject,content,category);

        int re = service.insert(questionDTO);
        System.out.println("controoler insert "+re);

        return new ModelAndView("index.jsp");
    }
}
