package bean;

/**
 * @author ilshin714
 *
 */
public class RproductVo {
	int rSerial; //제품 시리얼
	String rpName; // 상품옵션
	int rPrice; // 상품 원금 
	int rEa; //상품 재고
	String rsId; // 판매자 이름
	int rRate; // 상품할인 금
	String rPhoto;  // 상품 사진
	String rSubject;
	String rContent;
	String rDate; // 제품등록일
	String rRatePhoto ; // 상품 할인된 사진 정보
	int rfPrice; // 최종상품가격
	String rVideo;
	String rOptionName;
	
	String sId;

	public String getrOptionName() {
		return rOptionName;
	}

	public void setrOptionName(String rOptionName) {
		this.rOptionName = rOptionName;
	}

	public int getrSerial() {
		return rSerial;
	}

	public void setrSerial(int rSerial) {
		this.rSerial = rSerial;
	}

	public String getRpName() {
		return rpName;
	}

	public void setRpName(String rpName) {
		this.rpName = rpName;
	}

	public int getrPrice() {
		return rPrice;
	}

	public void setrPrice(int rPrice) {
		this.rPrice = rPrice;
	}

	public int getrEa() {
		return rEa;
	}

	public void setrEa(int rEa) {
		this.rEa = rEa;
	}

	public String getRsId() {
		return rsId;
	}

	public void setRsId(String rsId) {
		this.rsId = rsId;
	}

	public int getrRate() {
		return rRate;
	}

	public void setrRate(int rRate) {
		this.rRate = rRate;
	}

	public String getrPhoto() {
		return rPhoto;
	}

	public void setrPhoto(String rPhoto) {
		this.rPhoto = rPhoto;
	}

	public String getrSubject() {
		return rSubject;
	}

	public void setrSubject(String rSubject) {
		this.rSubject = rSubject;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public String getrDate() {
		return rDate;
	}

	public void setrDate(String rDate) {
		this.rDate = rDate;
	}

	public String getrRatePhoto() {
		return rRatePhoto;
	}

	public void setrRatePhoto(String rRatePhoto) {
		this.rRatePhoto = rRatePhoto;
	}

	public int getRfPrice() {
		return rfPrice;
	}

	public void setRfPrice(int rfPrice) {
		this.rfPrice = rfPrice;
	}

	public String getrVideo() {
		return rVideo;
	}

	public void setrVideo(String rVideo) {
		this.rVideo = rVideo;
	}

	public String getsId() {
		return sId;
	}

	public void setsId(String sId) {
		this.sId = sId;
	} 
	
	
	
	
}
