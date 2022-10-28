package controller;

import java.io.IOException;
import java.util.List;
import java.util.Locale.Category;

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
		
		return null;
	}
	
	/**
	 *  전체검색
	 * */
	public ModelAndView select(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		List<QnaDTO> list = qnaService.selectAll();  
		request.setAttribute("list", list); //뷰에서 ${list}
		
		return new ModelAndView("elec/list.jsp"); //forward방식으로 이동
	}
	
	/**
	 * 등록하기
	 * */
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		//전송된 데이터 받기 
		String qNum = request.getParameter("qNum");
		String category = request.getParameter("category");
		String emailId = request.getParameter("emailId");
		String qSubject = request.getParameter("qSubject");
		String qContent = request.getParameter("qContent");
		String qDate = request.getParameter("qDate");
		String qHits = request.getParameter("qHits");
				
		QnaDTO qna = 
			new QnaDTO(qNum, category, emailId, qSubject, qContent, qDate, Integer.parseInt(qHits));
		
		qnaService.insert(qna);
		return new ModelAndView("front", true);//key=elec&methodName=select 기본으로 설정된다.
	}
	
	/**
	 *  수정폼
	 * */
	public ModelAndView updateForm(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String qNum = request.getParameter("qnaService");
		QnaDTO qnaDTO = qnaService.selectByqSubject(qnaService, false);
		
		request.setAttribute("QnaDTO", qnaDTO);
		
		return new ModelAndView("elec/update.jsp");//forward방식
	}
	
	/**
	 * 수정완료
	 * */
	public ModelAndView update(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	   //수정할 정보 5개 받기
		String qNum = request.getParameter("qNum");
		String category = request.getParameter("category");
		String emailId = request.getParameter("emailId");
		String qSubject = request.getParameter("qSubject");
		String qContent = request.getParameter("qContent");
		String qDate = request.getParameter("qDate");
		String qHits = request.getParameter("qHits");
		
		qnaService.update( new QnaDTO( qNum, category, emailId, qSubject, qContent, qDate, Integer.parseInt(qHits)));
		
		//수정이 완료가 된후..
		ModelAndView mv = new ModelAndView();
		mv.setViewName("front?key=elec&methodName=selectByQNum&qNum="+qNum+"&qNum="+qNum);
	    mv.setRedirect(true);
		return mv;
	}
	/**
	 * 삭제
	 * */
	public ModelAndView delete(HttpServletRequest request, String category, HttpServletResponse response)
			throws Exception {
		//전송되는 2개받기
		String qNum = request.getParameter("qNum");
		String emailId = request.getParameter("emailId");
		
		qnaService.delete(qNum, category, emailId);
		
		return new ModelAndView("front", true);
	}
	

}
