package dao;

import java.sql.SQLException;
import java.util.List;

import dto.QnaDTO;


public interface QnaDAO {
	/**
	  * 레코드 전체 검색
	  * */
	  List<QnaDTO> selectAll() throws SQLException;
	  
	  /**
		  * 레코드 전체 검색(페이지처리)
	  * */
	   List<QnaDTO> getBoardList(int pageNo) throws SQLException;
	  
	  /**
	   * 모델번호에 해당하는 레코드 검색
	   * */
	   QnaDTO selectByModelNum(String qNum) throws SQLException;
	  
	  /**
	   * 조회수를 증가하는 기능
	   * update QnaDTO set q_hits = q_hits + 1 where q_num=?
	   * */
	  int increamentByReadnum(String qHits) throws SQLException;
	  
	  
	 /**
	 * 레코드 삽입
	 * @return : 1-삽입성공 , 0 - 삽입실패
	  * */
	  int insert(QnaDTO qna) throws SQLException;
	  
	  /**
	   * 모델번호에 해당하는 레코드 삭제
	   * @return : 1-삭제성공 , 0 - 삭제실패
	   * */
	  int delete(String qNum, String password) throws SQLException;
	  
	   /**
	    * 모델번호에 해당하는 레코드 수정
	    * @return : 1-수정성공 , 0 - 수정실패
	    * */
	  int update(QnaDTO qna) throws SQLException;

}