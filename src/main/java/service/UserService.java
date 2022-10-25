package service;

import java.sql.SQLException;
import javax.naming.AuthenticationException;
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

}
