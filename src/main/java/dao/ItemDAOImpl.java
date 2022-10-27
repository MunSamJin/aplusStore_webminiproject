package dao;

import dto.AdminLoginDTO;
import dto.ItemDTO;
import util.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ItemDAOImpl implements ItemDAO{
    @Override
    public List<ItemDTO> itemsSelectAll()  {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<ItemDTO> list = new ArrayList<ItemDTO>();
        String sql = "SELECT * FROM items";

        try{
            //전체 레코드 수를 구한다.

            con = DbUtil.getConnection();
            con.setAutoCommit(false);


            ps = con.prepareStatement(sql);


            rs = ps.executeQuery();


            while(rs.next()){
                ItemDTO ItemDTO  =
                        new ItemDTO(
                                rs.getInt(1), rs.getString(2),
                                rs.getString(3),rs.getInt(4),
                                rs.getString(5),rs.getString(6),
                                rs.getString(7),rs.getInt(8),
                                rs.getString(9)
                        );
                list.add(ItemDTO);
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DbUtil.dbClose(con, ps, rs);
        }

        return list;
    }

    @Override
    public ItemDTO itemSelectBymodelName(String modelName) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        ItemDTO itemDTO = null;
        String sql ="select * from ITEMS where model_name = ?";

        try{
            con = DbUtil.getConnection();
            ps = con.prepareStatement(sql);

            ps.setString(1, modelName);

            rs = ps.executeQuery();

            if(rs.next()){
                itemDTO = new ItemDTO(rs.getInt(1),rs.getString(2),
                        rs.getString(3), rs.getInt(4),
                        rs.getString(5), rs.getString(6),
                        rs.getString(7), rs.getInt(8),
                        rs.getString(9));
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DbUtil.dbClose(con, ps, rs);
        }
        return itemDTO;
    }

    @Override
    public List<ItemDTO> itemSelectByCategory(String category, String miniCategory)  {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<ItemDTO> list = new ArrayList<ItemDTO>();

        String sql ="select * from ITEMS where category = ? and MODEL_GPS = ?";

        try{
            con = DbUtil.getConnection();
            ps = con.prepareStatement(sql);

            ps.setString(1, category);
            ps.setString(2, miniCategory);

            rs = ps.executeQuery();

            while (rs.next()){
                ItemDTO itemDTO = new ItemDTO(rs.getInt(1),rs.getString(2),
                        rs.getString(3), rs.getInt(4),
                        rs.getString(5), rs.getString(6),
                        rs.getString(7), rs.getInt(8),
                        rs.getString(9));
                list.add(itemDTO);
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DbUtil.dbClose(con, ps, rs);
        }
        System.out.println("dao 길이"+list.size());
        return list;

    }

    @Override
    public List<ItemDTO> itemSeachBymodelName(String modelName){
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<ItemDTO> list = new ArrayList<ItemDTO>();

        String sql ="SELECT * from ITEMS where MODEL_NAME LIKE ? AND CATEGORY NOT in('iphone','watch','AirPods')";

        try{
            con = DbUtil.getConnection();
            ps = con.prepareStatement(sql);

            ps.setString(1, "%"+modelName+"%");


            rs = ps.executeQuery();

            while (rs.next()){
                ItemDTO itemDTO = new ItemDTO(rs.getInt(1),rs.getString(2),
                        rs.getString(3), rs.getInt(4),
                        rs.getString(5), rs.getString(6),
                        rs.getString(7), rs.getInt(8),
                        rs.getString(9));
                list.add(itemDTO);
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DbUtil.dbClose(con, ps, rs);
        }
        System.out.println("dao 길이"+list.size());
        return list;
    }

    @Override
    public int insertItemByAcc(ItemDTO itemDTO){
        Connection con = null;
        PreparedStatement ps = null;
        int result = 0;
        String sql = "INSERT INTO ITEMS VALUES (model_num_seq.nextval, 'accessory', ?,?,NULL,?,?,?,sysdate)";


        try {
            con = DbUtil.getConnection();
            ps = con.prepareStatement(sql);

            ps.setString(1, itemDTO.getModelName());
            ps.setInt(2, itemDTO.getModelPrice());
            ps.setString(3, itemDTO.getModelColor());
            ps.setString(4,itemDTO.getModelGPS());
            ps.setInt(5,itemDTO.getModelStock());


            result = ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        } finally {
            DbUtil.dbClose(con, ps);
        }
        return result;
    }

    @Override
    public int insertItemByWatch(ItemDTO itemDTO){
        Connection con = null;
        PreparedStatement ps = null;
        int result = 0;
        String sql = "INSERT INTO ITEMS VALUES (model_num_seq.nextval, 'watch', ?,?,?,?,?,?,sysdate)";


        try {
            con = DbUtil.getConnection();
            ps = con.prepareStatement(sql);

            ps.setString(1, itemDTO.getModelName());
            ps.setInt(2, itemDTO.getModelPrice());
            ps.setString(3,itemDTO.getModelOption());
            ps.setString(4, itemDTO.getModelColor());
            ps.setString(5,itemDTO.getModelGPS());
            ps.setInt(6,itemDTO.getModelStock());


            result = ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        } finally {
            DbUtil.dbClose(con, ps);
        }
        return result;
    }

    
    @Override
    public int deleteItem(ItemDTO modelName) {
        return 0;
    }

    @Override
    public int updateItem(ItemDTO itemDTO)  {
        return 0;
    }

    @Override
    public AdminLoginDTO adminLogin(AdminLoginDTO adminLoginDTO) throws SQLException {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        AdminLoginDTO dbDTO = null;
        System.out.println("다오"+adminLoginDTO);
        String sql = "select * from owner where admin_id=? and admin_pwd=?";

        try{
            con = DbUtil.getConnection();
            ps = con.prepareStatement(sql);

            ps.setString(1, adminLoginDTO.getAdminID());
            ps.setString(2, adminLoginDTO.getAdminPwd());

            rs = ps.executeQuery();

            if (rs.next()){
                dbDTO = new AdminLoginDTO(rs.getString(1),
                        rs.getString(2));
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            DbUtil.dbClose(con, ps, rs);
        }
        System.out.println("다오 입력갑"+dbDTO);
        return dbDTO;
    }
}
