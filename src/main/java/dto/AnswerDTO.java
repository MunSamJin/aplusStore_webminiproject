package dto;

public class AnswerDTO {

    private int ANum;

    private int QNum;
    private String AContent;

    private String aDate;

    public AnswerDTO(int ANum, int QNum, String AContent, String aDate) {
        this.ANum = ANum;
        this.QNum = QNum;
        this.AContent = AContent;
        this.aDate = aDate;
    }

    public int getANum() {
        return ANum;
    }

    public void setANum(int ANum) {
        this.ANum = ANum;
    }

    public int getQNum() {
        return QNum;
    }

    public void setQNum(int QNum) {
        this.QNum = QNum;
    }

    public String getAContent() {
        return AContent;
    }

    public void setAContent(String AContent) {
        this.AContent = AContent;
    }

    public String getaDate() {
        return aDate;
    }

    public void setaDate(String aDate) {
        this.aDate = aDate;
    }
}
