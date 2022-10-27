package dto;

public class AdminDetailDTO {
	private String detailModelNum;
	private String orderNum;
	private String detailModelName;
	private int detailQty;
	private int salePrice;
	
	private AdminDTO adminDTO;
	
	public AdminDetailDTO() {}

	public AdminDetailDTO(String detailModelNum, String orderNum, String detailModelName, int detailQty,
			int salePrice) {
		super();
		this.detailModelNum = detailModelNum;
		this.orderNum = orderNum;
		this.detailModelName = detailModelName;
		this.detailQty = detailQty;
		this.salePrice = salePrice;
	}
	
	

	public AdminDetailDTO(String detailModelNum, String orderNum, String detailModelName, int detailQty, int salePrice,
			AdminDTO adminDTO) {
		super();
		this.detailModelNum = detailModelNum;
		this.orderNum = orderNum;
		this.detailModelName = detailModelName;
		this.detailQty = detailQty;
		this.salePrice = salePrice;
		this.adminDTO = adminDTO;
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

	public AdminDTO getAdminDTO() {
		return adminDTO;
	}

	public void setAdminDTO(AdminDTO adminDTO) {
		this.adminDTO = adminDTO;
	}

	
	
}
