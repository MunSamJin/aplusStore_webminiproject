package service;

import java.sql.SQLException;
import java.util.List;
import dao.QnaDAO;
import dao.QnaDAOImpl;
import dto.QnaDTO;

public class QnaServiceImpl implements QnaService {
	private QnaDAO qnaDAO = new QnaDAOImpl();

	//검색
	@Override
	public List<QnaDTO> selectAll() throws SQLException {
		List<QnaDTO>  list = qnaDAO.selectAll();
		return list;
	}

	//등록
	@Override
	public void insert(QnaDTO qnaDTO) throws SQLException {
		int result = qnaDAO.insert(qnaDTO);
		if(result==0)throw new SQLException("등록되지 않았습니다.");

	}

	//삭제(질문번호, 질문종류, 이메일Id)
	@Override
	public void delete(String qNum, String category, String emailId) throws SQLException {
		QnaDTO dbQna = qnaDAO.selectByqSubject(qNum);
		
		if(dbQna == null) {
			throw new SQLException("질문번호 오류로 삭제 할수없습니다.");
			
		}else if(!dbQna.getCategory().equals(category)) {
			throw new SQLException("질문종류를 다시 확인해주세요.-삭제실패");
			
		}else if(!dbQna.getEmailId().equals(emailId)) {
			throw new SQLException("emailId를 다시 확인해주세요.-삭제실패");
		}
		
		 if(qnaDAO.delete(qNum, category, emailId) == 0) {
			 throw new SQLException("삭제되지 않았습니다.");
		 }
		 
	}


	//수정
	@Override
	public void update(QnaDTO qnaDTO) throws SQLException {
		//전달된 비번과 DB에저장된 비번이 일치하는지 먼저 체크한다.
		QnaDTO dbQna = qnaDAO.selectByqSubject(qnaDTO.getqNum());
		
		if(dbQna == null) {
			throw new SQLException("모델번호 오류로 수정할수 없습니다.");
			
		/*}else if(!dbElec.getPassword().equals(qnaDTO.getPassword())) {
			throw new SQLException("비밀번호를 다시 확인해주세요.-수정실패");*/
		}
		
		if(qnaDAO.update(qnaDTO) ==0) {
			throw new SQLException("수정되지않았습니다.");
		}

	}

}
