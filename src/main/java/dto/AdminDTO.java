package dto;

public class AdminDTO {
	private String orderNum;
	private String memberGuest; //비회원
	private String orderName; //주문자 이름
	private String realAddr; //주문자 주소
	private String orderDate; //주문날짜
	private String orderState; //주문상태
	private String realEmail; //주문자 이메일
	private String orderPhone; //주문자 휴대폰번호
	private int totalPrice;//총금액
	
	public AdminDTO() {}
	
	public AdminDTO(int totalPrice) {
		super();
		this.totalPrice = totalPrice;
	}
	
	public AdminDTO(String orderState) {
		super();
		this.orderState = orderState;
	}

	public AdminDTO(String orderNum, String orderState, String orderDate) {
		super();
		this.orderNum = orderNum;
		this.orderState = orderState;
		this.orderDate = orderDate;
	}
	

	public AdminDTO(String orderNum, String memberGuest, String orderName, String realAddr, String orderDate, String orderState,
			String realEmail, String orderPhone, int totalPrice) {
		super();
		this.orderNum = orderNum;
		this.memberGuest = memberGuest;
		this.orderName = orderName;
		this.realAddr = realAddr;
		this.orderDate = orderDate;
		this.orderState = orderState;
		this.realEmail = realEmail;
		this.orderPhone = orderPhone;
		this.totalPrice = totalPrice;
	}

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
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
	

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getOrderState() {
		return orderState;
	}

	public void setOrderState(String orderState) {
		this.orderState = orderState;
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

	
	
}

