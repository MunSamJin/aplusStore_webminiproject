package dto;


public class CartDTO {
	private String cartNum;
	private String category;
	private String modelNum;
	private String modelName;
	private String emailId;
	
	private int modelPrice;
	private int modelCount;
	private int modelStock;

	public CartDTO() {}
	
	public CartDTO(String modelNum, String modelName, int modelCount, int modelPrice, int modelStock) {
		super();
		this.modelNum = modelNum;
		this.modelName = modelName;
		this.modelCount = modelCount;
		this.modelPrice = modelPrice;
		this.modelStock = modelStock;
	}

	public CartDTO(String cartNum, String category, String modelNum, String modelName, String emailId, int modelPrice, int modelCount, int modelStock) {
		super();
		this.cartNum = cartNum;
		this.category = category;
		this.modelNum = modelNum;
		this.modelName = modelName;
		this.emailId = emailId;
		this.modelPrice = modelPrice;
		this.modelCount = modelCount;
		this.modelStock = modelStock;
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

	public int getModelPrice() {
		return modelPrice;
	}

	public void setModelPrice(int modelPrice) {
		this.modelPrice = modelPrice;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getModelStock() {
		return modelStock;
	}

	public void setModelStock(int modelStock) {
		this.modelStock = modelStock;
	}

}
