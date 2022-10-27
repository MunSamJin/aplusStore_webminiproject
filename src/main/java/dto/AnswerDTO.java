package dto;

public class AnswerDTO {

    private int ANum;
    private String AContent;
    private int QNum;
    private String aDate;

    public AnswerDTO(int ANum, String AContent, int QNum, String aDate) {
        this.ANum = ANum;
        this.AContent = AContent;
        this.QNum = QNum;
        this.aDate = aDate;
    }

    public int getANum() {
        return ANum;
    }

    public void setANum(int ANum) {
        this.ANum = ANum;
    }

    public String getAContent() {
        return AContent;
    }

    public void setAContent(String AContent) {
        this.AContent = AContent;
    }

    public int getQNum() {
        return QNum;
    }

    public void setQNum(int QNum) {
        this.QNum = QNum;
    }

    public String getaDate() {
        return aDate;
    }

    public void setaDate(String aDate) {
        this.aDate = aDate;
    }
}
