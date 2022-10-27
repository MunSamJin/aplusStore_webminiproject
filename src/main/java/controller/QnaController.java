package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dto.QnaDTO;
import service.QnaService;
import service.QnaServiceImpl;

public class QnaController implements Controller{
	private QnaService qnaService = new QnaServiceImpl();
	
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 *  ��ü�˻�
	 * */
	public ModelAndView select(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		List<QnaDTO> list = qnaService.selectAll();  
		request.setAttribute("list", list);//�信�� ${list}
		
		return new ModelAndView("elec/list.jsp"); //forward������� �̵�
	}
	
	/**
	 * ����ϱ�
	 * */
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		//���۵� ������ �ޱ� 
		String qNum = request.getParameter("q_num");
		String category = request.getParameter("category");
		String emailId = request.getParameter("email_id");
		String qSubject = request.getParameter("q_subject");
		String qContent = request.getParameter("q_content");
		String qDate = request.getParameter("q_date");
		String qHits = request.getParameter("q_hits");
				
		QnaDTO qna = 
			new QnaDTO(qNum, category, emailId, qSubject, qContent, qDate, Integer.parseInt(qHits));
		
		qnaService.insert(qna);
		return new ModelAndView("front", true);//key=elec&methodName=select �⺻���� �����ȴ�.	
	}
	
	/**
	 * �󼼺��� 
	 * */
	public ModelAndView selectByModelNum(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		 String qNum = request.getParameter("qNum");
		 boolean state = request.getParameter("flag")==null ? true : false;
		 

		 
		 //�ι�° �μ� boolean ��ȸ�� �������θ� �Ǵ��� �μ�(true�̸�, false�̸� ��������)
//		QnaDTO qnaDTO = qnaService.selectByQNum(qNum, state);
//		request.setAttribute("qna", qnaDTO);
		
		
		return new ModelAndView("qna/read.jsp"); //forward��� 
		
	}
	
	
	/**
	 *  ������
	 * */
	public ModelAndView updateForm(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String qNum = request.getParameter("qNum");
//		QnaDTO qnaDTO = qnaService.selectByQNum(qNum, false);
		
//		request.setAttribute("qna", qnaDTO);
		//request.setAttribute("pageNo", pageNo);
		
		return new ModelAndView("elec/update.jsp");//forward���
	}
	
	/**
	 * �����Ϸ�
	 * */
	public ModelAndView update(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	   //������ ���� 5�� �ޱ�
		String qNum = request.getParameter("qNum");
		String category = request.getParameter("category");
		String emailId = request.getParameter("emailId");
		String qSubject = request.getParameter("qSubject");
		String qContent = request.getParameter("qContent");
		String qDate = request.getParameter("qDate");
		String qHits = request.getParameter("qHits");
		
	
		
		qnaService.update( new QnaDTO( qNum, category, emailId, qSubject, qContent, qDate, Integer.parseInt(qHits)));
		
		//������ �Ϸᰡ ����..
		ModelAndView mv = new ModelAndView();
		mv.setViewName("front?key=elec&methodName=selectByQNum&qNum="+qNum+"&qNum="+qNum);
	    mv.setRedirect(true);
		return mv;
	}
	/**
	 * ����
	 * */
	public ModelAndView delete(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		//���۵Ǵ� 2���ޱ�
		String qNum = request.getParameter("qNum");
		String emailId = request.getParameter("emailId");
		
		
//		qnaService.delete(qNum, emailId);
		
		return new ModelAndView("front", true);
	}
	

}
