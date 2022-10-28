package service;

import java.sql.SQLException;
import java.util.List;

import dto.QnaDTO;

public interface QnaService {
	
	/**
	 * QnaDAOImpl의 모든 게시글 검색하는 메소드 호출
	 * */
    List<QnaDTO> selectAll() throws SQLException;
	  
    
	  /**
	   * QnaDAOImpl의 레코드 삽입 메소드 호출
	   * */
	  void insert(QnaDTO qnaDTO) throws SQLException;
	  
	  /**
	   * QnaDAOImpl의 글제목에 해당하는 게시글 검색하는 메소드 호출
	   * @param : boolean flag - 조회수 증가 여부를 판별하는 매개변수임(true이면 조회수증가 / false이면 조회수 증가 안함)
	   * */
	  QnaDTO selectByqSubject(QnaService qnaService, boolean b)
			throws SQLException;
		 
		 
	 /**
	   * QnaDAOImpl의 질문번호, 질문종류, 이메일Id에 해당하는 레코드 삭제 메소드 호출
	   * */
	  void delete(String qNum, String category, String emailId) throws SQLException;
	  
	  
	  /**
	   * QnaDAOImpl의 레코드 수정 메소드 호출
	   * */
	   void update(QnaDTO qnaDTO) throws SQLException;


	
}
