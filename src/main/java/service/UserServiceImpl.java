package service;

import java.sql.SQLException;

import javax.naming.AuthenticationException;

import dao.UserDAO;
import dao.UserDAOImpl;
import dto.UserDTO;

public class UserServiceImpl implements UserService {

	private UserDAO userDAO = new UserDAOImpl();
	
	@Override
	public UserDTO loginCheck(UserDTO userdto) throws SQLException, AuthenticationException {//id,pwd만 가진 userdto가 옴.

		UserDTO dbDTO = userDAO.loginCheck(userdto);
		if(dbDTO==null) {
			throw new AuthenticationException("정보를 다시 확인해주세요.");
		}
		
		return dbDTO;
	}
	
	@Override
	public UserDTO lookforId(UserDTO userDTO) throws SQLException {

		
		//UserDTO dto = userDAO.lookforId(userDTO);
		//if(dto==null) {
		//	throw new AuthenticationException("다시 입력해주세요.");
		//}
		
		return null; //dto
	}
	
	
	/**
	 * 회원가입
	 */
	
	public int insert(UserDTO userDTO) throws SQLException {
		
			int result = userDAO.insert(userDTO);
			
			 return result;
	
		
	}
	
}
