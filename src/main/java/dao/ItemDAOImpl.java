package dao;

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
        return null;
    }

    @Override
    public List<ItemDTO> itemSelectBymodelName(String modelName) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<ItemDTO> list = new ArrayList<ItemDTO>();
        String sql ="select * from ITEMS where model_name like ?";

        try{
            con = DbUtil.getConnection();
            ps = con.prepareStatement(sql);

            ps.setString(1, "%"+modelName+"%");

            rs = ps.executeQuery();

            while(rs.next()){
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
        return list;
    }

    @Override
    public List<ItemDTO> itemSelectByCategory(String category)  {
        return null;
    }

    @Override
    public List<ItemDTO> itemSeachBymodelName(String modelName){
        return null;
    }

    @Override
    public void insertItem(ItemDTO itemDTO){

    }

    @Override
    public int deleteItem(ItemDTO modelName) {
        return 0;
    }

    @Override
    public int updateItem(ItemDTO itemDTO)  {
        return 0;
    }
}
