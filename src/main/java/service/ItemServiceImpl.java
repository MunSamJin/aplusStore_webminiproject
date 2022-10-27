package service;

import dao.ItemDAO;
import dao.ItemDAOImpl;
import dto.ItemDTO;

import java.sql.SQLException;
import java.util.List;

public class ItemServiceImpl implements ItemService{
    private ItemDAO dao = new ItemDAOImpl();
    @Override
    public List<ItemDTO> itemsSelectAll() {
        return null;
    }

    @Override
    public ItemDTO itemSelectBymodelName(String modelName) throws SQLException{

        ItemDTO itemDTO = dao.itemSelectBymodelName(modelName);

        return itemDTO;
    }

    @Override
    public List<ItemDTO> itemSelectByCategory(String category, String miniCategory)  {

        List<ItemDTO> list = dao.itemSelectByCategory(category, miniCategory);
        System.out.println("서비스 길이"+list.size());
        return list;
    }

    @Override
    public List<ItemDTO> itemSeachBymodelName(String modelName)  {

        List<ItemDTO> list = dao.itemSeachBymodelName(modelName);
        System.out.println("서비스 길이"+list.size());
        return list;
    }


    @Override
    public void insertItemByAcc(ItemDTO itemDTO) throws SQLException {
        System.out.println("Service Acc insert 시작");
        int re = dao.insertItemByAcc(itemDTO);
        System.out.println("acc insert service"+re);
    }

    @Override
    public void insertItemByAirpods(ItemDTO itemDTO) throws SQLException {
        System.out.println("service watch insert 시작");
        
    }

    @Override
    public void insertItemByIphone(ItemDTO itemDTO) throws SQLException {

    }

    @Override
    public void insertItemByWatch(ItemDTO itemDTO) throws SQLException {

    }


    @Override
    public int deleteItem(ItemDTO modelName)  {
        return 0;
    }

    @Override
    public int updateItem(ItemDTO itemDTO) {
        return 0;
    }
}
