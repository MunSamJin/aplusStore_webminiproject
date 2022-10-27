package dao;

import java.sql.SQLException;

import java.util.List;

import dto.CartDTO;

public interface CartDAO {
	/**
	 * ȸ�� - ��ٱ��Ͽ� ��ǰ �߰�(db)
	 * param : �𵨹�ȣ
	 * insert into basket values(cart_num_seq.nextval, ?, ?, 1)
	 */
	int selectToInsert(String modelName, String emailId) throws SQLException;
	CartDTO overlapCheck(String emailId, String modelName) throws SQLException;
	
<<<<<<< HEAD
	/**
	 * ��ȸ�� - ��ٱ��Ͽ� ��ǰ �߰�(session)
	 * 
	 */
	
=======
>>>>>>> merge221027
	
	
	/**
	 * ȸ�� - ��ٱ��� ��ǰ ��ȸ
	 * select * from basket where email_id=?
	 */
	List<CartDTO> select(String emailId) throws SQLException;
<<<<<<< HEAD
	
	
	
	/**
	 * ��ȸ�� - ��ٱ��� ��ǰ ��ȸ
	 */
	
=======
	CartDTO selectForGuest(String modelName) throws SQLException;
>>>>>>> merge221027
	
	
	/**
	 * ȸ�� - ��ٱ��� ��ǰ ����
	 * delete basket where email_id=? and model_num=?
	 */
	int delete(String cartNum) throws SQLException;
	
	
<<<<<<< HEAD
	/**
	 * ��ȸ�� - ��ٱ��� ��ǰ ����
	 */
	
	
=======
>>>>>>> merge221027
	
	/**
	 * ȸ�� - ��ٱ��� ��ǰ ���� ����
	 * update basket set model_count=? where cart_num=?
	 */
	int update(String cartNum, int modelCount) throws SQLException;
	
	
<<<<<<< HEAD
	
	/**
	 * ��ȸ�� - ��ٱ��� ��ǰ ���� ����
	 */
=======
>>>>>>> merge221027
}
