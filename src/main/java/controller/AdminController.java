package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDAO;
import dao.AdminDAOImpl;
import dto.AdminDTO;
import dto.AdminDetailDTO;
import service.AdminService;
import service.AdminServiceImpl;
import net.sf.json.JSONArray;

public class AdminController implements AjaxController {
	private AdminService service= new AdminServiceImpl();

	@Override
	public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * 판매통계를 조회하는 기능 (Chart.js, jqGrid) 
	 * @return : 주문테이블 전체컬럼 가져와서 조회하기
	 * @throws SQLException 
	 * */
	public void selectSales(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		 	response.setContentType("text/html;charset=UTF-8");   
			
			List<AdminDTO> list = service.selectSales();
			
			//list를 응답할수 없기때문에 list를 jsonArray변환해서 보낸다.
			JSONArray arr = JSONArray.fromObject(list);
			
			PrintWriter out = response.getWriter();
			out.print(arr);

	}
	
	/**
	 * 관리자가 주문내역을 조회하고 주문상태를 변경할 수 있는 기능
	 * @throws SQLException 
	 * */
	public void getOrderList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");   
		
        //System.out.println("controller!!!");
		List<AdminDTO> list = service.getOrderList();
		
		//list를 응답할수 없기때문에 list를 jsonArray변환해서 보낸다.
		JSONArray arr = JSONArray.fromObject(list);
		
		PrintWriter out = response.getWriter();
		out.print(arr);

	}
	
	
	/**
	 * Admin 등록하기
	 * */
	public void insert(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String orderNum = request.getParameter("orderNum");
		String orderState = request.getParameter("orderState");
		String orderDate = request.getParameter("orderDate");
				
		System.out.println("orderState변수 = "+orderState);
		AdminDTO dto = new AdminDTO(orderNum, orderState, orderDate);
		
		AdminDAO dao = new AdminDAOImpl();
		int result = dao.insert(dto);
		
		PrintWriter out = response.getWriter();
		out.print(result);
	}
	
	
	/**
	 * 주문상태 레코드 수정하기 (상품준비중, 픽업대기중, 픽업완료, 배송중, 배송완료, 주문취소)
	 * */
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String orderNum = request.getParameter("orderNum");
		String orderState = request.getParameter("orderState");
		String orderDate = request.getParameter("orderDate");
		String realEmail = request.getParameter("realEmail");
		
		System.out.println("컨트롤러 realEmail " + realEmail);
		
		AdminDTO dto = new AdminDTO(orderNum, orderState, orderDate, realEmail);
		int result = service.update(dto);
		
		PrintWriter out = response.getWriter();
		out.print(result);
		
	}
	
	/**
	 * 주문취소 기능 (상품준비중 일때만 가능, 주문내역 조회 후 사용 가능)
	 * @return : 재고에 수량 증가시키고, 배송현황에서 삭제되고 취소 알림창이 뜬다
	 * */
	public void incrementByStock(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}
	
	/**
	 * 주문내역 조회(해당하는 레코드 검색)
	 * @throws SQLException 
	 * */
	public void searchByOrderNum(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		response.setContentType("text/html;charset=UTF-8");   
		
		String orderNum = request.getParameter("orderNum");
		String realEmail = request.getParameter("realEmail");
		
		System.out.println("controller_searchByOrderNum확인= "+orderNum+","+realEmail);
		
		List<AdminDetailDTO> list = service.searchByOrderNum(orderNum, realEmail);
		
		JSONArray arr = JSONArray.fromObject(list);
		
		PrintWriter out = response.getWriter();
		out.print(arr);
	}

	
	/**
	 * 주문상세페이지 조회
	 * @throws SQLException 
	 * */
	/*
	public void getDetailList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");   
		
        String orderNum = request.getParameter("orderNum");
        
        System.out.println("controller - orderNum값  : "+orderNum);
        
		List<AdminDetailDTO> list = service.getDetailList(orderNum);
		
		//list를 응답할수 없기때문에 list를 jsonArray변환해서 보낸다.
		JSONArray arr = JSONArray.fromObject(list);
		
		PrintWriter out = response.getWriter();
		out.print(arr);

		System.out.println("controller - arr값 : "+arr);
	}*/
	
	
	
	/**
	 * 주문번호에 따라 배송상태 불러오기
	 * @throws SQLException 
	 * */
	/*
	public void getOrderState(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");   
		
        String orderNum = request.getParameter("orderNum");		
		AdminDTO adminDTO = service.getOrderState(orderNum);
		
		System.out.println("controller"+adminDTO);
		
		JSONArray arr = JSONArray.fromObject(adminDTO);
		
		PrintWriter out = response.getWriter();
		out.print(arr);

	}
	*/

}
