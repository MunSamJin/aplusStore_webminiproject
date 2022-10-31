package service;

import java.sql.SQLException;

import javax.naming.AuthenticationException;

import controller.ModelAndView;
import dto.UserDTO;


public interface UserService {
	/**
	 * 로그인 체크
	 * */
   public UserDTO loginCheck(UserDTO userDTO)throws SQLException , AuthenticationException;

   
   /**
    *  아이디 찾기
    */
   public void lookforId(String emailId, String phone)throws SQLException;


   
   /**
    *  회원가입
    */
   public int insert(UserDTO userDTO) throws SQLException;
   
   
   /**
    *  회원정보변경
    */
   public int update(String emailId, UserDTO dto) throws SQLException;
   
   /**
    *  이메일 인증
    */

   
   

}





