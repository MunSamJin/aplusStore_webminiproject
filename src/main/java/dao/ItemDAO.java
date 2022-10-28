package dao;


import dto.AdminLoginDTO;

import dto.ItemDTO;

import java.sql.SQLException;
import java.util.List;

public interface ItemDAO {


    /**
     * 전체 상품 조회
     * @return : 전체 상품
     * */
    List<ItemDTO> itemsSelectAll();

    /**
     * 제품 상세 페이지
     * @param : 모델 이름을 입력해서
     * @return : 해당하는 이름의 제품을 ItemsDTO List 로 리턴
     * 왜냐하면, iphon14 를  선택하면, 같은 모델의 색상, 다른 용량이 모두 나와서 그중 하나 선택 되도록해야함
     * (마치 카테고리처럼)
     * ItemReadServlet
     * */
    ItemDTO itemSelectBymodelName(String modelName)throws SQLException ;

    /**
     * 카테고리 상품 조회
     * @param : 카테고리 이름을 전달 받음
     * @return : 해당하는 제품을 리스트로 리턴
     * */
    List<ItemDTO> itemSelectByCategory(String category, String miniCategory);

    /**
     * 상품 이름으로 검색 (같은 모델 색상,용량 모두 나열)
     * @param : 상품이름으로 검색 ( 앞에만 받기 예를들어 iphone14 만 입력해도 iphone14
     * @return : 해당하는 제품의
     * */
    List<ItemDTO> itemSeachBymodelName(String modelName) ;

    /**
     * 관련된 상품 조회
     * */

    /**
     * 상품 등록 - 악세서리
     * @param : itemDTO로 받아서 제품을 등록한다
     * */
    int insertItemByAcc(ItemDTO itemDTO);

    /**

     * 상품 등록 - 워치
     * @param : itemDTO로 받아서 제품을 등록한다
     * */
    int insertItemByWatch(ItemDTO itemDTO);





    /**

     * 상품 삭제
     * @param : modelName을 받아서 해당 제품을 삭제한다.
     * */
    int deleteItem(ItemDTO modelName) ;

    /**
     * 상품 수정
     * @param : itemDTO 를 전달받아서 내용을 수정한다.
     * */
    int updateItem(ItemDTO itemDTO) ;


    /**
     * 관리자 로그인
     * */
    AdminLoginDTO adminLogin(AdminLoginDTO adminLoginDTO) throws SQLException;


}
