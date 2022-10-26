package service;

import java.sql.SQLException;
import java.util.List;

import dao.AdminDAO;
import dao.AdminDAOImpl;
import dto.AdminDTO;
import dto.AdminDetailDTO;

public class AdminServiceImpl implements AdminService {
	private AdminDAO adminDAO = new AdminDAOImpl();
	
	@Override
	public List<AdminDTO> selectSales() throws SQLException {
		List<AdminDTO> list = adminDAO.selectSales();
		if(list == null) {
			throw new SQLException("출력되는 값이 없습니다.");
		}
		return list;
	}

	@Override
	public int insert(AdminDTO adminDTO) throws SQLException {
		int result = adminDAO.insert(adminDTO);
		if(result<=0) {
			throw new SQLException("실패");
		}
		return result;
	}

	@Override
	public int update(AdminDTO orderDTO) throws SQLException {
		int result = adminDAO.update(orderDTO);
		if(result<=0) {
			throw new SQLException("실패");
		}
		return result;
	}

	@Override
	public List<AdminDTO> getOrderList() throws SQLException {
		List<AdminDTO> list = adminDAO.getOrderList();
		if(list == null) {
			throw new SQLException("출력되는 값이 없습니다.");
		}
		return list;
	}

	@Override
	public int incrementByStock(String orderNum) throws SQLException {
		int result = adminDAO.incrementByStock(orderNum);
		if(result<=0) {
			throw new SQLException("실패");
		}
		return result;
	}

	@Override
	public List<AdminDTO> searchByOrderNum(String orderNum, String realEmail) throws SQLException {
		List<AdminDTO> list = adminDAO.searchByOrderNum(orderNum, realEmail);
		if(list == null) {
			throw new SQLException("출력되는 값이 없습니다.");
		}
		return list;
	}

	@Override
	public List<AdminDetailDTO> getDetailList(String orderNum) throws SQLException {
		List<AdminDetailDTO> list = adminDAO.getDetailList(orderNum);
		if(list == null) {
			throw new SQLException("출력되는 값이 없습니다.");
		}
		return list;
	}
	
	@Override
	public AdminDTO getOrderState(String orderNum) throws SQLException {
		AdminDTO adminDTO = adminDAO.getOrderState(orderNum);		
		if(adminDTO==null) {
			throw new SQLException("주문번호를 확인할 수 없습니다."); 
		}
		return adminDTO;
	}



}
