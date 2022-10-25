package dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import dto.QnaDTO;
import kosta.mvc.dto.Electronics;
import kosta.mvc.paging.PageCnt;
import kosta.mvc.util.DbUtil;

public class QnaDAOImpl implements QnaDAO {
	private Properties proFile = new Properties();
	
	public QnaDAOImpl() {
		try {
			//dbQuery를 준비한 ~.properties파일을 로딩해서 Properties 자료구조에 저장한다.
			
			//현재 프로젝트가 런타임(실행)될때, 즉 서버가 실행될때 classes폴더의 위치를
			//동적으로 가져와서 경로를 설정해야한다.
			InputStream is = getClass().getClassLoader().getResourceAsStream("dbQuery.properties");
			proFile.load(is);
			
			System.out.println("query.select = " +proFile.getProperty("query.select"));
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	@Override
	public List<QnaDTO> selectAll() throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<QnaDTO> list = new ArrayList<QnaDTO>();
		
		String sql= proFile.getProperty("query.select");
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				QnaDTO qnaDTO = 
				new QnaDTO(rs.getString(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getInt(6), rs.getString(7));
				
			   list.add(qnaDTO);
			}
		}finally {
			DbUtil.dbClose(con, ps, rs);
		}
		return list;
	}

	@Override
	public List<QnaDTO> getBoardList(int pageNo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<QnaDTO> list = new ArrayList<QnaDTO>();
		
		String sql= proFile.getProperty("query.pagingSelect");//select * from  (SELECT a.*, ROWNUM rnum FROM (SELECT * FROM Electronics ORDER BY writeday desc) a) where  rnum>=? and rnum <=? 
		try {
			
			
			con = DbUtil.getConnection();
			con.setAutoCommit(false);
			
			//전체레코드수를 구한다.
			int totalCount = this.getTotalCount(con);
			int totalPage = totalCount%PageCnt.pagesize==0 ? totalCount/PageCnt.pagesize : (totalCount/PageCnt.pagesize)+1;
			
			PageCnt pageCnt = new PageCnt();
			pageCnt.setPageCnt(totalPage);
			pageCnt.setPageNo(pageNo);
			
			ps = con.prepareStatement(sql);
			//? 2개에 set설정
			ps.setInt(1, (pageNo-1) * pageCnt.pagesize +1); //시작
			ps.setInt(2, pageNo * pageCnt.pagesize);//끝
			
			rs = ps.executeQuery();
			while(rs.next()) {
				QnaDTO qnaDTO = 
				new QnaDTO(rs.getString(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getInt(6), rs.getString(7));
				
			   list.add(qnaDTO);
			}
		}finally {
			DbUtil.dbClose(con, ps, rs);
		}
		return list;
	}

	@Override
	public QnaDTO selectByModelNum(String qNum) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int increamentByReadnum(String qHits) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(QnaDTO qna) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String qNum, String password) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(QnaDTO qna) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}


}//클래스끝
