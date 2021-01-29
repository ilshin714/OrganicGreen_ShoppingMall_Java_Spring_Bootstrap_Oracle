package bean;

public class SellerVo {
	int bCode;
	String bpName;
	int bpPrice;
	String bpDate;
	String bpId;
	int bpRate;
	int bpEa;
	int bpSerial;
	String bpAddress;
	int bdPrice;
	String bsId;
	String bpRequest;
	
	//그래프 및 카드 표시용
	int totPrice;  //총 판매액
	int totEa;     //총 판매량
	int stockEa;   //재고량
	int sellRate;  //판매율
	
	//메인 배송 현황보기용
	int deliveryStatus;  //배송현황(메인에서 씀)
	
	public String getBpRequest() {
		return bpRequest;
	}
	
	public void setBpRequest(String bpRequest) {
		this.bpRequest = bpRequest;
	}

	
	public String getBsId() {
		return bsId;
	}

	public void setBsId(String bsId) {
		this.bsId = bsId;
	}

	public int getDeliveryStatus() {
		return deliveryStatus;
	}

	public void setDeliveryStatus(int deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}

	public int getSellRate() {
		return sellRate;
	}

	public void setSellRate(int sellRate) {
		this.sellRate = sellRate;
	}

	public int getStockEa() {
		return stockEa;
	}

	public void setStockEa(int stockEa) {
		this.stockEa = stockEa;
	}

	public int getTotEa() {
		return totEa;
	}

	public void setTotEa(int totEa) {
		this.totEa = totEa;
	}

	public int getTotPrice() {
		return totPrice;
	}

	public void setTotPrice(int totPrice) {
		this.totPrice = totPrice;
	}

	public int getbCode() {
		return bCode;
	}

	public void setbCode(int bCode) {
		this.bCode = bCode;
	}

	public String getBpName() {
		return bpName;
	}

	public void setBpName(String bpName) {
		this.bpName = bpName;
	}

	public int getBpPrice() {
		return bpPrice;
	}

	public void setBpPrice(int bpPrice) {
		this.bpPrice = bpPrice;
	}

	public String getBpDate() {
		return bpDate;
	}

	public void setBpDate(String bpDate) {
		this.bpDate = bpDate;
	}

	public String getBpId() {
		return bpId;
	}

	public void setBpId(String bpId) {
		this.bpId = bpId;
	}

	public int getBpRate() {
		return bpRate;
	}

	public void setBpRate(int bpRate) {
		this.bpRate = bpRate;
	}

	public int getBpEa() {
		return bpEa;
	}

	public void setBpEa(int bpEa) {
		this.bpEa = bpEa;
	}

	public int getBpSerial() {
		return bpSerial;
	}

	public void setBpSerial(int bpSerial) {
		this.bpSerial = bpSerial;
	}

	public String getBpAddress() {
		return bpAddress;
	}

	public void setBpAddress(String bpAddress) {
		this.bpAddress = bpAddress;
	}

	public int getBdPrice() {
		return bdPrice;
	}

	public void setBdPrice(int bdPrice) {
		this.bdPrice = bdPrice;
	}

}
