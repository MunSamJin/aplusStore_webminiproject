package dao;

import java.sql.SQLException;
import java.util.List;

import dto.AdminDTO;
import dto.AdminDetailDTO;


public interface AdminDAO {
	/**
	 * 판매통계를 조회하는 기능 (Chart.js, jqGrid) 
	 * @return : 주문테이블 전체컬럼 가져와서 조회하기
	 * */
	List<AdminDTO> selectSales();
	
	/**
	 * Admin 등록하기
	 * */
	int insert(AdminDTO adminDTO);
	
	
	/**
	 * 주문상태 레코드 수정하기 (상품준비중, 픽업대기중, 픽업완료, 배송중, 배송완료, 주문취소)
	 * */
	int update(AdminDTO orderDTO);

	/**
	 * 주문내역을 조회하는 기능(회원 - 로그인, 비회원 - 주문번호)
	 * */
	List<AdminDTO> getOrderList();
	
	/**
	 * 주문취소 기능 (상품준비중 일때만 가능, 주문내역 조회 후 사용 가능)
	 * @return : 재고에 수량 증가시키고, 배송현황에서 삭제되고 취소 알림창이 뜬다
	 * */
	int incrementByStock(String orderNum);

	
	/**
	 * 해당하는 레코드 검색
	 * */
	List<AdminDTO> searchByOrderNum(String orderNum, String realEmail);
	
	/**
	 * 주문상세페이지 조회
	 * */
	List<AdminDetailDTO> getDetailList(String orderNum);
	
	
	/**
	 * 주문번호에 따라 배송상태 불러오기
	 * */
	AdminDTO getOrderState(String orderNum);
}

