package dto;

public class ItemDTO {
    private int modelNum;
    private String category;
    private String modelName;
    private int modelPrice;
    private String modelOption;
    private String modelColor;
    private String modelGPS;
    private int modelStock;
    private String modelRegDate;

    public ItemDTO() {
    }
    
    public ItemDTO(String modelName,int modelPrice, int modelStock) {
    	this.modelName = modelName;
    	this.modelPrice = modelPrice;
    	this.modelStock = modelStock;
    }

    //악세서리 등록을 위해서 사용

    public ItemDTO(String modelName, int modelPrice, String modelOption, String modelColor, String modelGPS, int modelStock) {
        this.modelName = modelName;
        this.modelPrice = modelPrice;
        this.modelOption = modelOption;
        this.modelColor = modelColor;
        this.modelGPS = modelGPS;
        this.modelStock = modelStock;
    }

    public ItemDTO(String modelName, int modelPrice, String modelColor, String modelGPS, int modelStock) {
        this.modelName = modelName;
        this.modelPrice = modelPrice;
        this.modelColor = modelColor;
        this.modelGPS = modelGPS;
        this.modelStock = modelStock;
    }

    public ItemDTO(int modelNum, String category, String modelName, int modelPrice, String modelOption, String modelColor, String modelGPS, int modelStock, String modelRegDate) {
        this.modelNum = modelNum;
        this.category = category;
        this.modelName = modelName;
        this.modelPrice = modelPrice;
        this.modelOption = modelOption;
        this.modelColor = modelColor;
        this.modelGPS = modelGPS;
        this.modelStock = modelStock;
        this.modelRegDate = modelRegDate;
    }

    public int getModelNum() {
        return modelNum;
    }

    public void setModelNum(int modelNum) {
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

    public String getModelGPS() {
        return modelGPS;
    }

    public void setModelGPS(String modelGPS) {
        this.modelGPS = modelGPS;
    }

    public int getModelStock() {
        return modelStock;
    }

    public void setModelStock(int modelStock) {
        this.modelStock = modelStock;
    }

    public String getModelRegDate() {
        return modelRegDate;
    }

    public void setModelRegDate(String modelRegDate) {
        this.modelRegDate = modelRegDate;
    }
}
