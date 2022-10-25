package controller;

<<<<<<< HEAD
=======
/**
 * °¢ ControllerÀÇ ±¸ÇöÃ¼µéÀÌ ½ÇÇàµÈ ÈÄ ÀÌµ¿ÇØ¾ßÇÏ´Â ÆäÀÌÁö Á¤º¸¿Í 
 * ÀÌµ¿¹æ½Ä¿¡ ´ëÇÑ ¼Ó¼ºÀ» °ü¸®ÇÏ´Â °´Ã¼
 **/
>>>>>>> hyogyeong_main

public class ModelAndView {
	private String viewName;//ë·° ì´ë¦„
	private boolean isRedirect;// ì´ë™ë°©ì‹(true ì´ë©´ redirect, false ì´ë©´ forward ë°©ì‹)
	
	public ModelAndView() {}
	
	public ModelAndView(String viewName) {
		this.viewName = viewName;
	}

	public ModelAndView(String viewName, boolean isRedirect) {
		this(viewName);
		this.isRedirect = isRedirect;
	}

	public String getViewName() {
		return viewName;
	}

	public void setViewName(String viewName) {
		this.viewName = viewName;
	}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	
	
	
	

}
