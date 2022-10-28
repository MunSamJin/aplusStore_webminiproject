//package controller;
//
//import java.io.IOException;
//import java.util.List;
//import java.util.Locale.Category;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.oreilly.servlet.MultipartRequest;
//import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
//
//import dto.QnaDTO;
//import service.QnaService;
//import service.QnaServiceImpl;
//
//public class QnaController implements Controller{
//	private QnaService qnaService = new QnaServiceImpl();
//
//
//	@Override
//	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//
//		return null;
//	}
//
//	/**
//<<<<<<< HEAD
//	 *  ��ü�˻�
//=======
//	 *  전체검색
//>>>>>>> hyogyeong
//	 * */
//	public ModelAndView select(HttpServletRequest request, HttpServletResponse response)
//			throws Exception {
//
//		List<QnaDTO> list = qnaService.selectAll();
//
//		request.setAttribute("list", list);//�信�� ${list}
//
//		return new ModelAndView("elec/list.jsp"); //forward������� �̵�
//	}
//
//	/**
//	 * ����ϱ�
//=======
//		request.setAttribute("list", list); //뷰에서 ${list}
//
//		return new ModelAndView("elec/list.jsp"); //forward방식으로 이동
//	}
//
//	/**
//	 * 등록하기
//>>>>>>> hyogyeong
//	 * */
//	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response)
//			throws Exception {
//
//
//		String qNum = request.getParameter("q_num");
//
//		//전송된 데이터 받기
//		String qNum = request.getParameter("qNum");
//
//		String category = request.getParameter("category");
//		String emailId = request.getParameter("emailId");
//		String qSubject = request.getParameter("qSubject");
//		String qContent = request.getParameter("qContent");
//		String qDate = request.getParameter("qDate");
//		String qHits = request.getParameter("qHits");
//
//		QnaDTO qna =
//			new QnaDTO(qNum, category, emailId, qSubject, qContent, qDate, Integer.parseInt(qHits));
//
//
//		return new ModelAndView("front", true);//key=elec&methodName=select �⺻���� �����ȴ�.
//	}
//
//	/**
//	 * �󼼺���
//	 * */
//	public ModelAndView selectByModelNum(HttpServletRequest request, HttpServletResponse response)
//			throws Exception {
//
//		 String qNum = request.getParameter("qNum");
//		 boolean state = request.getParameter("flag")==null ? true : false;
//
//
//
//		 //�ι�° �μ� boolean ��ȸ�� �������θ� �Ǵ��� �μ�(true�̸�, false�̸� ��������)
////		QnaDTO qnaDTO = qnaService.selectByQNum(qNum, state);
////		request.setAttribute("qna", qnaDTO);
//
//
//		return new ModelAndView("qna/read.jsp"); //forward���
//
//	}
//
//
//	/**
//	 *  ������
//=======
//		return new ModelAndView("front", true);//key=elec&methodName=select 기본으로 설정된다.
//	}
//
//	/**
//	 *  수정폼
//>>>>>>> hyogyeong
//	 * */
//	public ModelAndView updateForm(HttpServletRequest request, HttpServletResponse response)
//			throws Exception {
//		String qNum = request.getParameter("qnaService");
//		QnaDTO qnaDTO = qnaService.selectByqSubject(qnaService, false);
//
//
////		String qNum = request.getParameter("qNum");
////		QnaDTO qnaDTO = qnaService.selectByQNum(qNum, false);
//
////		request.setAttribute("qna", qnaDTO);
//		//request.setAttribute("pageNo", pageNo);
//
//		return new ModelAndView("elec/update.jsp");//forward���
//	}
//
//	/**
//	 * �����Ϸ�
//	 * */
////	public ModelAndView update(HttpServletRequest request, HttpServletResponse response)
////			throws Exception {
//	   //������ ���� 5�� �ޱ�
//
//////		request.setAttribute("QnaDTO", qnaDTO);
////
////		return new ModelAndView("elec/update.jsp");//forward방식
////	}
//
//	/**
//	 * 수정완료
//	 * */
//	public ModelAndView update(HttpServletRequest request, HttpServletResponse response)
//			throws Exception {
//	   //수정할 정보 5개 받기
////>>>>>>> hyogyeong
////		String qNum = request.getParameter("qNum");
////		String category = request.getParameter("category");
////		String emailId = request.getParameter("emailId");
////		String qSubject = request.getParameter("qSubject");
////		String qContent = request.getParameter("qContent");
////		String qDate = request.getParameter("qDate");
////		String qHits = request.getParameter("qHits");
////
////		qnaService.update( new QnaDTO( qNum, category, emailId, qSubject, qContent, qDate, Integer.parseInt(qHits)));
////
////<<<<<<< HEAD
////		//������ �Ϸᰡ ����..
////=======
////		//수정이 완료가 된후..
////>>>>>>> hyogyeong
////		ModelAndView mv = new ModelAndView();
////		mv.setViewName("front?key=elec&methodName=selectByQNum&qNum="+qNum+"&qNum="+qNum);
////	    mv.setRedirect(true);
////		return mv;
//	}
//	/**
//<<<<<<< HEAD
//	 * ����
//=======
//	 * 삭제
//>>>>>>> hyogyeong
//	 * */
//	public ModelAndView delete(HttpServletRequest request, String category, HttpServletResponse response)
//			throws Exception {
//<<<<<<< HEAD
//		//���۵Ǵ� 2���ޱ�
//		String qNum = request.getParameter("qNum");
//		String emailId = request.getParameter("emailId");
//
//
////		qnaService.delete(qNum, emailId);
//=======
//		//전송되는 2개받기
//		String qNum = request.getParameter("qNum");
//		String emailId = request.getParameter("emailId");
//
//		qnaService.delete(qNum, category, emailId);
//>>>>>>> hyogyeong
//
//		return new ModelAndView("front", true);
//	}
//
//
//}
