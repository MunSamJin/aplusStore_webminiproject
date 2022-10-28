package dao;

import dto.AnswerDTO;
import dto.QuestionDTO;
import util.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class QuestionDAOImpl implements QuestionDAO{
    @Override
    public List<QuestionDTO> selectAllByiphone() throws SQLException {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<QuestionDTO> list = new ArrayList<QuestionDTO>();
        String sql = "SELECT * FROM question WHERE q_cate='iphone'";

        try{
            con = DbUtil.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();


            while(rs.next()){
                QuestionDTO questionDTO  = new QuestionDTO(
                        rs.getInt(1),rs.getString(2),rs.getString(3),
                        rs.getString(4),
                        rs.getString(5), rs.getInt(6),rs.getString(7));

                list.add(questionDTO);
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DbUtil.dbClose(con, ps, rs);
        }
        System.out.println("dao list"+list);
        return list;
    }

    @Override
    public QuestionDTO readQuestion(int qNum) throws SQLException {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        QuestionDTO questionDTO = null;
        String sql = "SELECT * FROM question WHERE q_num=?";

        try{
            con = DbUtil.getConnection();
            ps = con.prepareStatement(sql);


            ps.setInt(1, qNum);

            rs = ps.executeQuery();

            if(rs.next()){
                questionDTO  = new QuestionDTO(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7));
                questionDTO.setList(this.getAnswer(con,qNum));
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DbUtil.dbClose(con, ps, rs);
        }
        System.out.println("dao questionDTO"+questionDTO);
        return questionDTO;
    }

    @Override
    public List<AnswerDTO> getAnswer(Connection con, int qNum) throws SQLException {
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<AnswerDTO> list = new ArrayList<AnswerDTO>();
        String sql = "SELECT * FROM answer WHERE q_num=?";

        try{
            ps = con.prepareStatement(sql);
            ps.setInt(1, qNum);

            rs = ps.executeQuery();

            while (rs.next()){
                AnswerDTO answerDTO = new AnswerDTO(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4)
                );
                list.add(answerDTO);
            }

        }finally {
            DbUtil.dbClose(null, ps, rs);
        }
        System.out.println("답변 다오"+list);
        return list;
    }

    @Override
    public void insert(QuestionDTO questionDTO) throws SQLException {

    }

    @Override
    public List<QuestionDTO> searchBySubject(String qSubject) throws SQLException {
        return null;
    }

    @Override
    public int increamentByReadnum(String modelNum) throws SQLException {
        return 0;
    }
}
