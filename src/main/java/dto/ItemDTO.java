package dto;

public class ItemDTO {
	private String modelNum;
	private String category;
	private String modelName;
	private int modelPrice;
	private String modelOption;
	private String modelColor;
	private String modelGps;
	private int modelStock;
	private String modelRegdate;
	
	public ItemDTO() {}

	public ItemDTO(String modelNum, String category, String modelName, int modelPrice, String modelOption,
			String modelColor, String modelGps, int modelStock, String modelRegdate) {
		super();
		this.modelNum = modelNum;
		this.category = category;
		this.modelName = modelName;
		this.modelPrice = modelPrice;
		this.modelOption = modelOption;
		this.modelColor = modelColor;
		this.modelGps = modelGps;
		this.modelStock = modelStock;
		this.modelRegdate = modelRegdate;
	}

	public String getModelNum() {
		return modelNum;
	}

	public void setModelNum(String modelNum) {
		this.modelNum = modelNum;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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

	public String getModelOption() {
		return modelOption;
	}

	public void setModelOption(String modelOption) {
		this.modelOption = modelOption;
	}

	public String getModelColor() {
		return modelColor;
	}

	public void setModelColor(String modelColor) {
		this.modelColor = modelColor;
	}

	public String getModelGps() {
		return modelGps;
	}

	public void setModelGps(String modelGps) {
		this.modelGps = modelGps;
	}

	public int getModelStock() {
		return modelStock;
	}

	public void setModelStock(int modelStock) {
		this.modelStock = modelStock;
	}

	public String getModelRegdate() {
		return modelRegdate;
	}

	public void setModelRegdate(String modelRegdate) {
		this.modelRegdate = modelRegdate;
	}
	
	
}
