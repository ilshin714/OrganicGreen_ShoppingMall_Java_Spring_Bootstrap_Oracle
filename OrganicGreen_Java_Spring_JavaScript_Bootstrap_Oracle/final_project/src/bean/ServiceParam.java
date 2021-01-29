package bean;

public class ServiceParam {

	String findStr = "";
	int nowPage = 1;
	int serial;

	int startNo = 0;
	int endNo = 0;
	int totPage = 0;
	
	// 탭 옵션
	int serviceTab;
	
	// 서치 옵션
	int searchOption = 1;

	// 구매자 ID 확인용
	String bId; //판매자 ID

	public int getServiceTab() {
		return serviceTab;
	}

	public void setServiceTab(int serviceTab) {
		this.serviceTab = serviceTab;
	}

	public String getbId() {
		return bId;
	}

	public void setbId(String bId) {
		this.bId = bId;
	}

	public int getSearchOption() {
		return searchOption;
	}

	public void setSearchOption(int searchOption) {
		this.searchOption = searchOption;
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

}
