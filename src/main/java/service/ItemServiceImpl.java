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
    public void insertItem(ItemDTO itemDTO) {

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
