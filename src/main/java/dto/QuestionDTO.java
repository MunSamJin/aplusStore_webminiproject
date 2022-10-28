package dto;

import java.util.List;

public class QuestionDTO {
    private int qNum;
    private String eMail;
    private String qSubject;
    private String qContent;
    private String qDate;
    private int qHits;
    private String qCate;
    private List<AnswerDTO> list;

    public QuestionDTO(int qNum, String eMail, String qSubject, String qContent, String qDate, int qHits, String qCate, List<AnswerDTO> list) {
        this.qNum = qNum;
        this.eMail = eMail;
        this.qSubject = qSubject;
        this.qContent = qContent;
        this.qDate = qDate;
        this.qHits = qHits;
        this.qCate = qCate;
        this.list = list;
    }

    public QuestionDTO(List<AnswerDTO> list) {
        this.list = list;
    }


    public QuestionDTO(int qNum, String eMail, String qSubject, String qContent, String qDate, int qHits, String qCate) {
        this.qNum = qNum;
        this.eMail = eMail;
        this.qSubject = qSubject;
        this.qContent = qContent;
        this.qDate = qDate;
        this.qHits = qHits;
        this.qCate = qCate;
    }

    public int getqNum() {
        return qNum;
    }

    public void setqNum(int qNum) {
        this.qNum = qNum;
    }

    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    public String getqSubject() {
        return qSubject;
    }

    public void setqSubject(String qSubject) {
        this.qSubject = qSubject;
    }

    public String getqContent() {
        return qContent;
    }

    public void setqContent(String qContent) {
        this.qContent = qContent;
    }

    public String getqDate() {
        return qDate;
    }

    public void setqDate(String qDate) {
        this.qDate = qDate;
    }

    public int getqHits() {
        return qHits;
    }

    public void setqHits(int qHits) {
        this.qHits = qHits;
    }

    public String getqCate() {
        return qCate;
    }

    public void setqCate(String qCate) {
        this.qCate = qCate;
    }

    public List<AnswerDTO> getList() {
        return list;
    }

    public void setList(List<AnswerDTO> list) {
        this.list = list;
    }
}
