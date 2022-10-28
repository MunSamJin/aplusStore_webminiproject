package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import dto.AnserDTO;
import util.DbUtil;

public class AnserDAOImpl implements AnserDAO {
	private Properties proFile = new Properties();

	//답변 등록
	@Override
	public int insert(AnserDTO anserDTO) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		int result=0;
		
		//insert into answer values(?,?,?,sysdate);
		String sql= "insert into answer values(?,?,?,sysdate)";
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, anserDTO.getaNum());
			ps.setString(2, anserDTO.getqNum());
			ps.setString(3, anserDTO.getaContent());
			ps.setInt(4, anserDTO.getaDate());
			result = ps.executeUpdate();
		}finally {
			DbUtil.dbClose(con, ps);
		}
		return result;
	}

	//답변번호에 해당하는 답변 삭제
	@Override
	public int delete(String aNum) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		int result=0;
		
		//delete from answer(테이블명) where qNum=?;
		String sql= "delete from answer where qNum=?";
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setString(1, aNum);
			
			result = ps.executeUpdate();
		}finally {
			DbUtil.dbClose(con, ps);
		}
		return result;
	}

	//답변번호에 해당하는 답변 수정
	@Override
	public int update(AnserDTO anserDTO) throws SQLException {
		PreparedStatement ps = null;
		  Connection con = null;
		  int result=0;
		  String sql= proFile.getProperty("Anser.update");
		  try {
		   con = DbUtil.getConnection();
		 //update Electronics set model_name=?,price=?,description=? where model_num=? and password=?;
		   ps = con.prepareStatement("update Electronics set model_name=?,price=?,description=? where model_num=? and password=?");
		   
		   ps = con.prepareStatement(sql);
		   ps.setString(1, anserDTO.getaNum());
		   ps.setString(2, anserDTO.getqNum());
			ps.setString(3, anserDTO.getaContent());
			ps.setInt(4, anserDTO.getaDate());
		   
		   result = ps.executeUpdate();
		  } catch (SQLException e) {
		   e.printStackTrace();
		  } finally {
		   DbUtil.dbClose(con,ps);
		  }
		  return result;
	}

	//질문번호에 해당하는 답변 검색
	@Override
	public AnserDTO selectByqNum(String qNum) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		AnserDTO anserDTO = null;
		
		String sql= proFile.getProperty("select * from Electronics where model_num=?");
		//select * from Electronics where model_num=?
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, qNum);
			
			rs = ps.executeQuery();
			if(rs.next()) {
				anserDTO = new AnserDTO(rs.getString(1), rs.getString(2), rs.getString(3),
						rs.getInt(4));
			
			}
		}finally {
			DbUtil.dbClose(con, ps, rs);
		}
		return anserDTO;
	}
	

}
