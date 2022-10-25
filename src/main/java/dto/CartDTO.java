package dto;

/**
 * 장바구니 DTO
 *
 */
public class CartDTO {
	private String cartNum;
	private String modelNum;
	private String modelName;
	private String emailId;
	private int modelCount;
	
	public CartDTO() {}

	public CartDTO(String cartNum, String modelNum, String modelName, String emailId, int modelCount) {
		super();
		this.cartNum = cartNum;
		this.modelNum = modelNum;
		this.emailId = emailId;
		this.modelCount = modelCount;
	}

	public String getCartNum() {
		return cartNum;
	}

	public void setCartNum(String cartNum) {
		this.cartNum = cartNum;
	}

	public String getModelNum() {
		return modelNum;
	}

	public void setModelNum(String modelNum) {
		this.modelNum = modelNum;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public int getModelCount() {
		return modelCount;
	}

	public void setModelCount(int modelCount) {
		this.modelCount = modelCount;
	}

	public String getModelName() {
		return modelName;
	}

	public void setModelName(String modelName) {
		this.modelName = modelName;
	}
	
}
