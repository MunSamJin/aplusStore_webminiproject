package dao;

import dto.QuestionDTO;

import java.sql.SQLException;
import java.util.List;

public interface QuestionDAO {
    /**
     * 모든 질문을 가져오는 메소드 - 이이폰
     * */
    List<QuestionDTO> selectAllByiphone() throws SQLException;


    /**
     * 질문 등록 하는 메소드
     * */
    void insert(QuestionDTO questionDTO) throws SQLException;

    /**
     * 제목으로 질문을 검색하는 메소드
     * */
    List<QuestionDTO> searchBySubject(String qSubject) throws SQLException;

    /**
     * 조회수를 증가하는 기능
     * update question set q_hits = q_hits + 1 where q_num=?
     * */
    int increamentByReadnum(String modelNum) throws SQLException;

}