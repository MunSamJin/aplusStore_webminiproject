package dto;

public class QnaDTO {
	private String qNum; //글번호
	private String category; //질문종류
	private String emailId; //질문자
	private String qSubject; //글제목
	private String qContent; //글내용
	private String qDate; //작성일
	private int qHits; //조회수
	
	public QnaDTO() {}

	public QnaDTO(String qNum, String category, String emailId, String qSubject, String qContent, String qDate,
			int qHits) {
		super();
		this.qNum = qNum;
		this.category = category;
		this.emailId = emailId;
		this.qSubject = qSubject;
		this.qContent = qContent;
		this.qDate = qDate;
		this.qHits = qHits;
	}

	public String getqNum() {
		return qNum;
	}

	public void setqNum(String qNum) {
		this.qNum = qNum;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
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
	
	
}


