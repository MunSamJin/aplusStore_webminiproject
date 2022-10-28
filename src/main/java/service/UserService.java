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
   public UserDTO lookforId(UserDTO userDTO)throws SQLException;


   
   /**
    *  회원가입
    */
   public void insert(UserDTO userDTO) throws SQLException;
   
   
   /**
    *  회원정보변경
    */
   public int update(UserDTO userdto) throws SQLException;
   
}





