package bean;

public class BproductParam {

	int nowPage=1;	
	int totPage=0;
	int startNo=0;
	int endNo=0;
	
	String findStr;
	String sbId;
	String mSubject;
	String bpId;
	String cId;
	int bpSerial;
	int p;
	String cpName;
	int cartNum;

	
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getStartNo() {
		return startNo;
	}
	public void setStartNo(int startNo) {
		this.startNo = startNo;
	}
	public int getEndNo() {
		return endNo;
	}
	public void setEndNo(int endNo) {
		this.endNo = endNo;
	}
	public int getTotPage() {
		return totPage;
	}
	public void setTotPage(int totPage) {
		this.totPage = totPage;
	}
	public String getBpId() {
		return bpId;
	}
	public void setBpId(String bpId) {
		this.bpId = bpId;
	}
	public int getBpSerial() {
		return bpSerial;
	}
	public void setBpSerial(int bpSerial) {
		this.bpSerial = bpSerial;
	}
	public String getSbId() {
		return sbId;
	}
	public void setSbId(String sbId) {
		this.sbId = sbId;
	}
	public String getmSubject() {
		return mSubject;
	}
	public void setmSubject(String mSubject) {
		this.mSubject = mSubject;
	}
	public int getP() {
		return p;
	}
	public void setP(int p) {
		this.p = p;
	}
	public String getCpName() {
		return cpName;
	}
	public void setCpName(String cpName) {
		this.cpName = cpName;
	}
	public int getCartNum() {
		return cartNum;
	}
	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
	}
	public String getFindStr() {
		return findStr;
	}
	public void setFindStr(String findStr) {
		this.findStr = findStr;
	}

	
	
	
	
	
}
