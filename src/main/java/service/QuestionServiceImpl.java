package service;

import dao.QuestionDAO;
import dao.QuestionDAOImpl;
import dto.QuestionDTO;

import java.sql.SQLException;
import java.util.List;

public class QuestionServiceImpl implements QuestionService{
    private QuestionDAO dao = new QuestionDAOImpl();
    @Override
    public List<QuestionDTO> selectAllByiphone() throws SQLException {
        System.out.println("서비스 시작");

        List<QuestionDTO> list = dao.selectAllByiphone();
        System.out.println("서비스 list"+list);
        return list;
    }

    @Override
    public QuestionDTO readQuestion(int qNum) throws SQLException {
        System.out.println("read service 시작"+qNum);

        QuestionDTO questionDTO = dao.readQuestion(qNum);
        System.out.println("read service:"+questionDTO);

        return questionDTO;
    }

    @Override
    public void insert(QuestionDTO questionDTO) throws SQLException {

    }

    @Override
    public List<QuestionDTO> searchBySubject(String qSubject) throws SQLException {
        return null;
    }

}
