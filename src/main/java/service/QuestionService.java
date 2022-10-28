package service;

import dto.QuestionDTO;

import java.sql.SQLException;
import java.util.List;

public interface QuestionService {

    /**
     * 모든 질문을 가져오는 메소드
     * */
    List<QuestionDTO> selectAllByiphone() throws SQLException;


    /**
     * 질문 내용을 가져오는 메소드
     * */
    QuestionDTO readQuestion(int qNum) throws SQLException;

    /**
     * 질문 등록 하는 메소드
     * */
    void insert(QuestionDTO questionDTO) throws SQLException;

    /**
     * 제목으로 질문을 검색하는 메소드
     * */
    List<QuestionDTO> searchBySubject(String qSubject) throws SQLException;


}
