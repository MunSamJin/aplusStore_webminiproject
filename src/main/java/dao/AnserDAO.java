package dao;

import java.sql.SQLException;

import dto.AnserDTO;

public interface AnserDAO {
	
	 	 /**
		 * 답변 등록
		 * @return : 1-등록성공 , 0 - 등록실패
		  * */
		  int insert(AnserDTO anserDTO) throws SQLException;
		  
		  /**
		   * 답변번호에 해당하는 답변 삭제
		   * @return : 1-삭제성공 , 0 - 삭제실패
		   * */
		  int delete(String aNum) throws SQLException;
		  
		  /**
		  * 답변번호에 해당하는 답변 수정
		  * */
		  int update(AnserDTO anserDTO)throws SQLException;
		  
		  /**
		   * 질문번호에 해당하는 답변 검색
		   * */
		  AnserDTO selectByqNum(String qNum) throws SQLException;

}
