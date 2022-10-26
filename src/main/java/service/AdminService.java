package service;

import java.sql.SQLException;
import java.util.List;

import dto.AdminDTO;
import dto.AdminDetailDTO;

public interface AdminService {
	
	/**
	 * 판매통계를 조회하는 기능 (Chart.js, jqGrid) 
	 * @return : 주문테이블 전체컬럼 가져와서 조회하기
	 * */
	public List<AdminDTO> selectSales() throws SQLException;
	
	
	/**
	 * Admin 등록하기
	 * */
	public int insert(AdminDTO adminDTO) throws SQLException;
	
	
	/**
	 * 주문상태 레코드 수정하기 (상품준비중, 픽업대기중, 픽업완료, 배송중, 배송완료, 주문취소)
	 * */
	public int update(AdminDTO orderDTO) throws SQLException;
	
	
	/**
	 * 주문내역을 조회하는 기능(회원 - 로그인, 비회원 - 주문번호)
	 * */
	public List<AdminDTO> getOrderList() throws SQLException;
	
	
	/**
	 * 주문취소 기능 (상품준비중 일때만 가능, 주문내역 조회 후 사용 가능)
	 * @return : 재고에 수량 증가시키고, 배송현황에서 삭제되고 취소 알림창이 뜬다
	 * */
	public int incrementByStock(String orderNum) throws SQLException;

	
	/**
	 * 해당하는 레코드 검색
	 * */
	public List<AdminDTO> searchByOrderNum(String orderNum, String realEmail) throws SQLException;
	
	
	/**
	 * 주문상세페이지 조회
	 * */
	public List<AdminDetailDTO> getDetailList(String orderNum) throws SQLException;
	
	
	/**
	 * 주문번호에 따라 배송상태 불러오기
	 * */
	public AdminDTO getOrderState(String orderNum) throws SQLException;
}
