package service;

import java.sql.SQLException;
import java.util.List;

import dao.CartDAO;
import dao.CartDAOImpl;
import dto.CartDTO;
import dto.ItemDTO;

public class CartServiceImpl implements CartService {
	CartDAO dao = new CartDAOImpl();
	
	@Override
	public void insert(String modelNum, String emailId) throws SQLException {
		int result = dao.selectToInsert(modelNum, emailId);
		
		if(result <= 0) {
			throw new SQLException("장바구니 추가에 실패했습니다");
		}
	}

	@Override
	public void delete(String emailId, String modelNum) throws SQLException {
		int result = dao.delete(emailId, modelNum);

		if(result<=0) {
			throw new SQLException("장바구니 삭제에 실패했습니다");
		}
	}

	@Override
	public void update(String cartNum, int modelCount) throws SQLException {
		int result = dao.update(cartNum, modelCount);

		if(result<=0) {
			throw new SQLException("장바구니 수정에 실패했습니다");
		}
	}

	@Override
	public List<CartDTO> select(String emailId) throws SQLException {
		List<CartDTO> list = dao.select(emailId);
		
		if(list == null) {
			throw new SQLException("장바구니 검색에 실패했습니다");
		}
		
		
		return list;
	}

}
