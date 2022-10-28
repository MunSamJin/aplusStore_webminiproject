package dto;


public class OrderDetailDTO {
	private String detailModelNum;
	private String orderNum;
	private String detailModelName;
	private int detailQty;
	private int salePrice;
	
	private OrderDTO orderDTO;
	
	public OrderDetailDTO() {}

	public OrderDetailDTO(String detailModelNum, String orderNum, String detailModelName, int detailQty,
			int salePrice) {
		super();
		this.detailModelNum = detailModelNum;
		this.orderNum = orderNum;
		this.detailModelName = detailModelName;
		this.detailQty = detailQty;
		this.salePrice = salePrice;
	}

	public OrderDetailDTO(String detailModelNum, String orderNum, String detailModelName, int detailQty, int salePrice, OrderDTO orderDTO) {
		super();
		this.detailModelNum = detailModelNum;
		this.orderNum = orderNum;
		this.detailModelName = detailModelName;
		this.detailQty = detailQty;
		this.salePrice = salePrice;
		this.orderDTO = orderDTO;
	}
	
	

	public OrderDetailDTO(String detailModelNum, String orderNum, String detailModelName, int detailQty, int salePrice,
			OrderDTO orderState, OrderDTO totalPrice) {
		super();
		this.detailModelNum = detailModelNum;
		this.orderNum = orderNum;
		this.detailModelName = detailModelName;
		this.detailQty = detailQty;
		this.salePrice = salePrice;
		this.orderDTO = orderState;
		this.orderDTO = totalPrice;
	}

	public String getDetailModelNum() {
		return detailModelNum;
	}

	public void setDetailModelNum(String detailModelNum) {
		this.detailModelNum = detailModelNum;
	}

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public String getDetailModelName() {
		return detailModelName;
	}

	public void setDetailModelName(String detailModelName) {
		this.detailModelName = detailModelName;
	}

	public int getDetailQty() {
		return detailQty;
	}

	public void setDetailQty(int detailQty) {
		this.detailQty = detailQty;
	}

	public int getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}

	public OrderDTO getOrderDTO() {
		return orderDTO;
	}

	public void setOrderDTO(OrderDTO orderDTO) {
		this.orderDTO = orderDTO;
	}
	
	
}
