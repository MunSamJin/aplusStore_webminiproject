package dao;

import java.sql.SQLException;
import java.util.List;

import dto.UserDTO;

public interface UserDAO {

	/**
	 * id에 해당하는 정보 수정하기
	 * */
	public int update(UserDTO userDTO);
	
	/**
	 * user(유저) 등록하기(회원가입)
	 * */
	public int insert(UserDTO userDTO);

	/**
	 * 로그인 기능
	 * select user_id , pwd, name from users where user_id=? and pwd=?
	 * */
	public UserDTO loginCheck(UserDTO userDTO);
	
	/**
	 * 아이디 찾기
	 */
	
	public UserDTO lookforId(String emailId, String phone);
	
	
	/**
	 * 픽업대기중일 때, 회원에게 픽업날짜, 시간, 장소를 이메일로 발송
	 */
	
	//public String pickUpStandBy(A_Orders ordersDTO)throws SQLException;
	
	/**
	 * 비밀번호 찾기 
	 */
	
	public UserDTO lookforPwd(String emailId, String name);
	
	/**
	 * 아이디 중복체크
	 * : true이면 중복, false이면 사용가능
	 * */
	public boolean idCheck(String id);
	
	

	
	
	
}