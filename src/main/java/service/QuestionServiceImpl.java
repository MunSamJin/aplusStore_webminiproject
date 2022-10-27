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
    public void insert(QuestionDTO questionDTO) throws SQLException {

    }

    @Override
    public List<QuestionDTO> searchBySubject(String qSubject) throws SQLException {
        return null;
    }

}
