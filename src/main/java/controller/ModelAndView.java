package controller;


public class ModelAndView {
	private String viewName;//뷰 이름
	private boolean isRedirect;// 이동방식(true 이면 redirect, false 이면 forward 방식)
	
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
