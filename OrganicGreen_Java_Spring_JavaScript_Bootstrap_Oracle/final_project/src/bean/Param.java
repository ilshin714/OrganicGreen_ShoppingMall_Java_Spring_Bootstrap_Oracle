package bean;

public class Param {
	String findStr= "";
	int nowPage = 1;
	int serial = 0;
	int startNo = 1;
	int endNo= 1;
	int totPage =0;

	
	public int getTotPage() {
		return totPage;
	}
	public void setTotPage(int totPage) {
		this.totPage = totPage;
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
	
	public String getFindStr() {
		return findStr;
	}
	public void setFindStr(String findStr) {
		this.findStr = findStr;
		
	}
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
		
	}
	public int getSerial() {
		return serial;

	}
	public void setSerial(int serial) {
		this.serial = serial;
	}
	
	
	
}
