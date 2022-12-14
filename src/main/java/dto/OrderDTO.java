package dto;

import java.util.List;

public class OrderDTO {
	private int orderNum; //주문번호
	private String memberGuest; //비회원
	private String orderName; //주문자 이름
	private String realAddr; //주문자 주소
	private String orderDate;//주문날짜
	private String orderState; //주문상태
	private String realEmail; //주문자 이메일
	private String orderPhone; //주문자 휴대폰번호
	private int totalPrice;//총금액

	private List<OrderDetailDTO> detailList;

	public OrderDTO() {}

	public OrderDTO(int totalPrice) {
		super();
		this.totalPrice = totalPrice;
	}
	
	public OrderDTO(String orderState) {
		super();
		this.orderState = orderState;
	}
	
	public OrderDTO(int orderNum, String orderState) {
		super();
		this.orderNum = orderNum;
		this.orderState = orderState;
	}
	
	
	public OrderDTO(int orderNum, String orderName, String realEmail) {
		this.orderNum = orderNum;
		this.orderName = orderName;
		this.realEmail = realEmail;
	}
	
	public OrderDTO(String orderName, String realAddr, String orderDate, String orderState, String realEmail, String orderPhone) {
		super();
		this.orderName = orderName;
		this.realAddr = realAddr;
		this.orderDate = orderDate;
		this.orderState = orderState;
		this.realEmail = realEmail;
		this.orderPhone = orderPhone;
	}

	public OrderDTO(String memberGuest, String orderName, String realAddr, String orderState, String realEmail, String orderPhone, int totalPrice) {
		super();
		this.memberGuest = memberGuest;
		this.orderName = orderName;
		this.realAddr = realAddr;
		this.orderState = orderState;
		this.realEmail = realEmail;
		this.orderPhone = orderPhone;
		this.totalPrice = totalPrice;
	}


	public OrderDTO(int orderNum, String memberGuest, String orderName, String realAddr, String orderState,
					String realEmail, String orderPhone, int totalPrice) {
		super();
		this.orderNum = orderNum;
		this.memberGuest = memberGuest;
		this.orderName = orderName;
		this.realAddr = realAddr;
		this.orderState = orderState;
		this.realEmail = realEmail;
		this.orderPhone = orderPhone;
		this.totalPrice = totalPrice;
	}

	public String getMemberGuest() {
		return memberGuest;
	}

	public void setMemberGuest(String memberGuest) {
		this.memberGuest = memberGuest;
	}

	public String getOrderName() {
		return orderName;
	}

	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}

	public String getRealAddr() {
		return realAddr;
	}

	public void setRealAddr(String realAddr) {
		this.realAddr = realAddr;
	}

	public String getRealEmail() {
		return realEmail;
	}

	public void setRealEmail(String realEmail) {
		this.realEmail = realEmail;
	}

	public String getOrderPhone() {
		return orderPhone;
	}

	public void setOrderPhone(String orderPhone) {
		this.orderPhone = orderPhone;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getOrderState() {
		return orderState;
	}

	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public List<OrderDetailDTO> getDetailList() {
		return detailList;
	}

	public void setDetailList(List<OrderDetailDTO> detailList) {
		this.detailList = detailList;
	}

	


}
