package dao;

import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.naming.spi.DirStateFactory.Result;

import dto.UserDTO;
import util.DbUtil;

public class UserDAOImpl implements UserDAO {
	

	


	/*
	 * 개인정보 수정
	 */
	
	@Override
	public int update(UserDTO userDTO){
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
				
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("update member set email_id=?,pwd=?,name=?,addr=?,phone=?");
			
			ps.setString(1, userDTO.getId());
			ps.setString(2, userDTO.getPwd());
			ps.setString(3, userDTO.getAddr());
			ps.setString(4, userDTO.getPhone());
			
			result = ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.dbClose(con, ps);
		}
		
		return result;
	}

	/*
	 * 회원가입
	 */
	
	@Override
	public int insert(UserDTO userDTO){
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("insert into customer(id,pwd,name,addr,phone) values(?,?,?,?,?)");
			ps.setString(1, userDTO.getId());
			ps.setString(2, userDTO.getPwd());
			ps.setString(3, userDTO.getName());
			ps.setString(4, userDTO.getAddr());
			ps.setString(5, userDTO.getPhone());
			
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
	public UserDTO loginCheck(UserDTO userDTO) { //id와 pwd만 가진 userDTO가 온다.
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		UserDTO dbuserDTO = null;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("select * from member where email_id=? and pwd=?");//select * from member where email_id='sikkk@naver.com' and pwd='1234';
			ps.setString(1, userDTO.getId());
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
		
		return dbuserDTO; 
	}

	/*
	 * 아이디 찾기
	 */
 
	@Override
	public UserDTO lookforId(String id, String name){
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		UserDTO dto=null;
		
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement("select * from member where email_id=? and name=?");//select * from member where email_id=? and name=?
			ps.setString(1, id);
			ps.setString(2, name);
			rs = ps.executeQuery();
		
			while(rs.next()) {
				dto=new UserDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setPhone(rs.getString("phone"));
				
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
	public UserDTO lookforPwd(String id, String phone){
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		UserDTO dto = null;
		
		
		try {
			con=DbUtil.getConnection();
			ps=con.prepareStatement("select * from member");
			ps.setString(1, id);
			ps.setString(2, phone);
		
			rs =ps.executeQuery();
		
			while(rs.next()) {
				dto = new UserDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setPhone(rs.getString("phone"));
				
			}
		}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				DbUtil.dbClose(con, ps, rs);
			}
		
		return dto;
	}

	/*
	 * 아이디 중복 체크
	 */
	@Override
	public boolean idCheck(String id){
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

	
	
	
}