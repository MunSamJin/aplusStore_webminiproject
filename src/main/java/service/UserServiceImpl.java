package service;

import java.io.PrintWriter;
import java.sql.SQLException;

import javax.naming.AuthenticationException;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import dao.UserDAOImpl;
import dto.UserDTO;
import mail.LoginMail;

public class UserServiceImpl implements UserService {

	private UserDAO userDAO = new UserDAOImpl();
	//private LoginMail mail = new LoginMail();

	
	@Override
	public UserDTO loginCheck(UserDTO userdto) throws SQLException, AuthenticationException {//id,pwd만 가진 userdto가 옴.

		UserDTO dbDTO = userDAO.loginCheck(userdto);
		if(dbDTO==null) {
			throw new AuthenticationException("정보를 다시 확인해주세요.");
		}
		
		return dbDTO;
	}
	
	/**
	 * 아이디 찾기
	 */
	
	@Override
	public void lookforId(String emailId, String phone) throws SQLException {

		
		
		
		
	}

	
	
	/**
	 * 회원가입
	 */
	
	public int insert(UserDTO userDTO) throws SQLException {
			
			int result = userDAO.insert(userDTO);
			if(result == 0 )throw new SQLException("회원가입에 실패하였습니다.\n"
					+ "다시 확인해주세요.");
			
			return result;
	}
	
	/**
	 * 메일 인증 
	 */
	
	public void checkMail(String comfEmail) throws Exception{
	/*	
		HttpSession session = request.getSession();
		   int result = session.getAttribute(mailNum);
			if(mailNum.equals(comfEmail)) {
		*/		
			}
	
				
		
	
	
	/**
	 * 정보 수정
	 */
	
	public int update(UserDTO userdto) throws SQLException{
		
		int result = userDAO.update(userdto);
		
		if(result > 0) {
			return result;
		}else {
			throw new SQLException("정보 수정을 실패하였습니다.");
		}
		
	
	}
}
