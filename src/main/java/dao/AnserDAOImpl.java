package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.QnaDTO;
import dto.AnserDTO;
import util.DbUtil;

public class AnserDAOImpl implements AnserDAO {

	//�亯 ���
	@Override
	public int insert(AnserDTO anserDTO) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		int result=0;
//		String sql= proFile.getProperty("Anser.insert");
		//insert into answer values(?,?,?,sysdate);
		try {
			con = DbUtil.getConnection();
//			ps = con.prepareStatement(sql);
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

	//�亯��ȣ�� �ش��ϴ� �亯 ����
	@Override
	public int delete(String aNum) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		int result=0;
		
		//delete from answer(���̺��) where qNum=?;
//		String sql= proFile.getProperty("Anser.delete");
		try {
			con = DbUtil.getConnection();
//			ps = con.prepareStatement(sql);

			ps.setString(1, aNum);
			
			result = ps.executeUpdate();
		}finally {
			DbUtil.dbClose(con, ps);
		}
		return result;
	}

	//�亯��ȣ�� �ش��ϴ� �亯 ����
	@Override
	public int update(AnserDTO anserDTO) throws SQLException {
		PreparedStatement ps = null;
		  Connection con = null;
		  int result=0;
		  try {
		   con = DbUtil.getConnection();
		   //QNA.update= update QnaDTO set qNum=?, qSubject=?, qContent=?;
		   ps = con.prepareStatement("update QnaDTO set qNum=?, qSubject=?, qContent=?");
		   
//		   ps = con.prepareStatement(sql);
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

	@Override
	public AnserDTO selectByqNum(String qNum) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		AnserDTO anserDTO = null;
		
//		String sql= proFile.getProperty("Anser.selectBymodelNum");
		//select * from Electronics where model_num=?
		try {
			con = DbUtil.getConnection();
//			ps = con.prepareStatement(sql);
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
