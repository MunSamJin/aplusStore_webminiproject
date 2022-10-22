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
    public List<ItemDTO> itemSelectBymodelName(String modelName) throws SQLException {
        List<ItemDTO> list = dao.itemSelectBymodelName(modelName);

        return list;
    }

    @Override
    public List<ItemDTO> itemSelectByCategory(String category)  {
        return null;
    }

    @Override
    public List<ItemDTO> itemSeachBymodelName(String modelName)  {
        return null;
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
