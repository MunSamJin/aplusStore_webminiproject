package service;


import dto.AdminLoginDTO;

import dto.ItemDTO;

import java.sql.SQLException;
import java.util.List;

public interface ItemService {

    /**
     * 전체 상품 조회
     * @return : 전체 상품
     * */
    public List<ItemDTO> itemsSelectAll() throws SQLException;

    /**
     * 제품 상세 페이지
     * @param : 모델 이름을 입력해서
     * @return : 해당하는 이름의 제품을 ItemsDTO 로 리턴
     * ItemReadServlet
     * */
    public ItemDTO itemSelectBymodelName(String modelName) throws SQLException;

    /**
     * 카테고리 상품 조회
     * @param : 카테고리 이름을 전달 받음
     * @return : 해당하는 제품을 리스트로 리턴
     * */
    public List<ItemDTO> itemSelectByCategory(String category, String miniCategory) throws SQLException;

    /**
     * 상품 이름으로 검색 (같은 모델 색상,용량 모두 나열)
     * @param : 상품이름으로 검색 ( 앞에만 받기 예를들어 iphone14 만 입력해도 iphone14
     * @return : 해당하는 제품의
     * */
    public List<ItemDTO> itemSeachBymodelName(String modelName) throws SQLException;

    /**
     * 관련된 상품 조회
     * */

    /**
     * 상품 등록 - 악세서리
     * @param : itemDTO로 받아서 제품을 등록한다
     * */
     public void insertItemByAcc(ItemDTO itemDTO)throws SQLException;



    /**
     * 상품 등록 - 에어팟
     * @param : itemDTO로 받아서 제품을 등록한다
     * */
    public void insertItemByAirpods(ItemDTO itemDTO)throws SQLException;


    /**
     * 상품 등록 - iphone
     * @param : itemDTO로 받아서 제품을 등록한다
     * */
    public void insertItemByIphone(ItemDTO itemDTO)throws SQLException;


    /**
     * 상품 등록 - watch
     * @param : itemDTO로 받아서 제품을 등록한다
     * */
    public void insertItemByWatch(ItemDTO itemDTO)throws SQLException;



    /**
     * 상품 삭제
     * @param : modelName을 받아서 해당 제품을 삭제한다.
     * */
     public int deleteItem(ItemDTO modelName) throws SQLException;

    /**
     * 상품 수정
     * @param : itemDTO 를 전달받아서 내용을 수정한다.
     * */
     public int updateItem(ItemDTO itemDTO) throws SQLException;


     /**
      * 관리자 로그인
      * */
     AdminLoginDTO adminLogin(AdminLoginDTO adminLoginDTO) throws SQLException;

}
