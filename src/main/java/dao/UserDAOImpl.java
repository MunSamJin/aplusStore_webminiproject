package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.UserDTO;
import util.DbUtil;

public class UserDAOImpl implements UserDAO {


	/*
	 * 개인정보 수정
	 */
	
	@Override
	public int update(String emailId, UserDTO userDTO) throws SQLException{
		System.out.println("다오 진입했니?");
		Connection con = null;
		
		PreparedStatement ps = null;
		int result  = 0;
		
		try {
			con = DbUtil.getConnection();

			ps = con.prepareStatement("update member set phone=?,pwd=?,addr=? where email_id=?");
			
			ps.setString(1, userDTO.getPhone());
			ps.setString(2, userDTO.getPwd());
			ps.setString(3, userDTO.getAddr()); 
			ps.setString(4, emailId);
			
			System.out.println("다오 ?userDTO.getPhone = " + userDTO.getPhone()+ userDTO.getPwd() + userDTO.getAddr()+ emailId);
			
			result = ps.executeUpdate();
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.dbClose(con, ps);
		}
		System.out.println("result 다오 = " + result);
		
		return result;
	}

	/*
	 * 회원가입
	 */
	
	@Override
	public int insert(UserDTO userDTO) throws SQLException{
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		

		
		String sql ="insert into member values(?,?,?,?,?)";//"insert into member(emailId,phone,pwd,name,addr)values(?, ?, ? ,?, ?)"
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, userDTO.getEmailId());
			ps.setString(2, userDTO.getPhone());
			ps.setString(3, userDTO.getPwd());
			ps.setString(4, userDTO.getName());
			ps.setString(5, userDTO.getAddr());
			
			System.out.println("userDTO = " + userDTO);
			result = ps.executeUpdate();
			

		
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.dbClose(con, ps);
		}
		
		return result;
	}

	/*
	 * 로그인 기능
	 */
	
	@Override
	public UserDTO loginCheck(UserDTO userDTO) throws SQLException { //id와 pwd만 가진 userDTO가 온다.
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		UserDTO dbuserDTO = null;
		

		String sql = "select * from member where email_id=? and pwd=?";
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, userDTO.getEmailId());
			ps.setString(2, userDTO.getPwd());
			rs = ps.executeQuery();
			if(rs.next()) {
				dbuserDTO = new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
			}
		
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.dbClose(con, ps, rs);
		}
		System.out.println("유저다오 dbuserDTO = " + dbuserDTO);
		return dbuserDTO; 
	}

	/*
	 * 아이디 찾기
	 */
 
	@Override
	public UserDTO lookforId(String emailId, String phone) throws SQLException{
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		UserDTO dto=null;
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("select * from member where email_id=? and phone=?");//select * from member where email_id=? and name=?
			ps.setString(1, emailId);
			ps.setString(2, phone);
			rs = ps.executeQuery();
		
			while(rs.next()) {
				dto=new UserDTO();

				dto.setEmailId(rs.getString("emailId"));
				dto.setPhone(rs.getString("phone"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.dbClose(con, ps, rs);
		}
		
		return dto;
	}
	
	/*
	 * 비밀번호 찾기
	 */

	@Override
	public UserDTO lookforPwd(String emailId, String name) throws SQLException{
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		UserDTO dto = null;
		
		
		try {
			con=DbUtil.getConnection();
			ps=con.prepareStatement("select * from member where email_id=? and name=?");
			ps.setString(1, emailId);
			ps.setString(2, name);
		
			rs =ps.executeQuery();
		
			while(rs.next()) {
				dto = new UserDTO();

				dto.setEmailId(rs.getString("emailId"));
				dto.setPhone(rs.getString("phone"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				
			}
		}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				DbUtil.dbClose(con, ps, rs);
			}
		System.out.println("다오 dto = " + dto );
		return dto;
	}

	/*
	 * 아이디 중복 체크
	 */
	@Override
	public boolean idCheck(String id) throws SQLException{
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean result = false;
		
		try {
			con=DbUtil.getConnection();
			ps = con.prepareStatement("select * from member where emailId=?");//select * from member where emailId=?
			ps.setString(1, id);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				result=true;
			}
		}catch(SQLException e) {
			e.printStackTrace();
			
		}finally {
			DbUtil.dbClose(con, ps, rs);
		}
		return result;
	}
	
	public UserDTO selectMemberInfo(UserDTO dto, String emailId) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		UserDTO userdto = null;
		
		try {
			con=DbUtil.getConnection();
			ps = con.prepareStatement("select * from member where emailId=?");//select * from member where emailId=?
			ps.setString(1, dto.getEmailId());
			rs = ps.executeQuery();
			
			while(rs.next()) {
				userdto = new UserDTO(
				rs.getString(1),
				rs.getString(2),
				rs.getString(3));
			}
		}catch(SQLException e) {
			e.printStackTrace();
			
		}finally {
			DbUtil.dbClose(con, ps, rs);
		}
		return userdto;
	}
	
}
