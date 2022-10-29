package service;

import dao.ItemDAO;
import dao.ItemDAOImpl;

import dto.AdminLoginDTO;

import dto.ItemDTO;

import java.sql.SQLException;
import java.util.List;

public class ItemServiceImpl implements ItemService{
    private ItemDAO dao = new ItemDAOImpl();
    @Override
    public List<ItemDTO> itemsSelectAll() {



        List<ItemDTO> list = dao.itemsSelectAll();

        return list;

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

        int re = dao.insertItemByWatch(itemDTO);
        System.out.println("watch insert service"+re);

    }

    @Override
    public void insertItemByIphone(ItemDTO itemDTO) throws SQLException {

    }

    @Override
    public void insertItemByWatch(ItemDTO itemDTO) throws SQLException {

    }


    @Override
    public int deleteItem(String modelName)  {
        int re = dao.deleteItem(modelName);


        return re;
    }

    @Override
    public int updateItem(ItemDTO itemDTO) {
        System.out.println("updateItem 서비스"+itemDTO);
        int re = dao.updateItem(itemDTO);

        return re;
    }


    @Override
    public AdminLoginDTO adminLogin(AdminLoginDTO adminLoginDTO) throws SQLException {
        System.out.println("로그인 서비스 호출"+adminLoginDTO);
        AdminLoginDTO db =  dao.adminLogin(adminLoginDTO);

        return db;
    }

    @Override
    public ItemDTO updateItemRead(int modelNum) throws SQLException {
        System.out.println("업데이트값 읽어오기 호출 "+modelNum);
        ItemDTO db = dao.updateItemRead(modelNum);


        return db;
    }
}
