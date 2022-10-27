package service;

import java.sql.SQLException;
import java.util.List;

import dao.CartDAO;
import dao.CartDAOImpl;
import dto.CartDTO;

public class CartServiceImpl implements CartService {
	CartDAO dao = new CartDAOImpl();
	
	@Override
	public void insert(String modelName, String emailId) throws SQLException {
		CartDTO cart = dao.overlapCheck(emailId, modelName);
		
		if(cart == null) {//장바구니에 없는 상품
			int result = dao.selectToInsert(modelName, emailId);
		
			if(result <= 0) {
				throw new SQLException("장바구니 추가에 실패했습니다");
			}
		} else {//장바구니에 있는 상품 -> update 수량 변경으로 바뀐다
			System.out.println("insert -> update");
			update(cart.getCartNum(), cart.getModelCount()+1);
		}
	}

	@Override
	public void delete(String cartNum) throws SQLException {
		int result = dao.delete(cartNum);
		
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
	
	
	//비회원
	//modelName에 맞는 items select -> cartDTO에 추가
	public CartDTO selectForGuest(String modelName) throws SQLException{
		CartDTO cart = dao.selectForGuest(modelName);
		
		if(cart == null) {
			throw new SQLException("비회원 장바구니 추가에 실패했습니다");
		}
		return cart;
	}
}
