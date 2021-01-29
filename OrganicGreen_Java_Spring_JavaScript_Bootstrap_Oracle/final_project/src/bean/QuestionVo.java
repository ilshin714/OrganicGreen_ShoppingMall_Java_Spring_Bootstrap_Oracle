package bean;

public class QuestionVo {
	int qSerial;
	String qbId;
	String qSubject;
	String qContent;
	int qAnswer;
	String qrSubject;
	String qrContent;
	String qDate;
	String qrDate;
	
	String bId;
	
	// 1대1문의 작성용 변수
	String qsOption;  //  주문번호 추가
	String qcOption;  //  문의내용 추가
	
	
	public String getbId() {
		return bId;
	}
	public void setbId(String bId) {
		this.bId = bId;
	}
	public String getQsOption() {
		return qsOption;
	}
	public void setQsOption(String qsOption) {
		this.qsOption = qsOption;
	}
	public String getQcOption() {
		return qcOption;
	}
	public void setQcOption(String qcOption) {
		this.qcOption = qcOption;
	}
	public int getqSerial() {
		return qSerial;
	}
	public void setqSerial(int qSerial) {
		this.qSerial = qSerial;
	}
	public String getQbId() {
		return qbId;
	}
	public void setQbId(String qbId) {
		this.qbId = qbId;
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
	public void setqContent(String qConent) {
		this.qContent = qConent;
	}
	public int getqAnswer() {
		return qAnswer;
	}
	public void setqAnswer(int qAnswer) {
		this.qAnswer = qAnswer;
	}
	public String getQrSubject() {
		return qrSubject;
	}
	public void setQrSubject(String qrSubject) {
		this.qrSubject = qrSubject;
	}
	public String getQrContent() {
		return qrContent;
	}
	public void setQrContent(String qrContent) {
		this.qrContent = qrContent;
	}
	public String getqDate() {
		return qDate;
	}
	public void setqDate(String qDate) {
		this.qDate = qDate;
	}
	public String getQrDate() {
		return qrDate;
	}
	public void setQrDate(String qrDate) {
		this.qrDate = qrDate;
	}
	

}
