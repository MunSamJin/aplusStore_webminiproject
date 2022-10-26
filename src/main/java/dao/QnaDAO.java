package dao;

import java.sql.SQLException;
import java.util.List;

import dto.QnaDTO;


public interface QnaDAO {
	
	  /**
	  * 게시글 전체 검색
	  * */
	  List<QnaDTO> selectAll() throws SQLException;
	  
	  /**
	   * qSubject(글제목)에 해당하는 게시글 검색
	   * */
	   QnaDTO selectByqSubject(String qSubject) throws SQLException;
	  
	  /**
	   * 조회 수 증가
	   * update QnaDTO set q_hits = q_hits + 1 where q_num=?
	   * */
	  int increamentByReadnum(String qHits) throws SQLException;
	  
	 /**
	 * 게시글 등록
	 * @return : 1-삽입성공 , 0 - 삽입실패
	  * */
	  int insert(QnaDTO qnaDTO) throws SQLException;
	  
	  /**
	   * qNum(글번호), category(질문종류), emailId(질문자)에 해당하는 게시글 삭제
	   * @return : 1-삭제성공 , 0 - 삭제실패
	   * */
	  int delete(String qNum, String category, String emailId) throws SQLException;
	  
	  /**
	  * 게시글 수정
	 * @throws SQLException 
	  * */
	  int update(QnaDTO qnaDTO) throws SQLException;

}