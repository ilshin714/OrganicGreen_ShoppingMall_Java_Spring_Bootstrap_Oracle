package bean;

public class SellerParam {

	String findStr = "";
	int nowPage = 1;
	int serial;

	int startNo = 0;
	int endNo = 0;
	int totPage = 0;
	
	// 서치 옵션
	int searchOption = 1;

	// 판매자 ID 확인용
	String sId; //판매자 ID

	//판매 현황 
	String sellMonth;  //판매현황 선택 월
	
	//배송 현황
	String searchStatus;  //배송 카드 선택시 입력되는값  
	
	//일신 누나 J 연간 차트 작성용
	int chartNum;  //1~12개월

	
	
	public int getSearchOption() {
		return searchOption;
	}

	public void setSearchOption(int searchOption) {
		this.searchOption = searchOption;
	}

	public int getChartNum() {
		return chartNum;
	}

	public void setChartNum(int chartNum) {
		this.chartNum = chartNum;
	}

	public String getSearchStatus() {
		if (searchStatus == null) {
			searchStatus = "";
		}
		return searchStatus;
	}

	public void setSearchStatus(String searchStatus) {
		this.searchStatus = searchStatus;
	}

	public String getSellMonth() {
		return sellMonth;
	}

	public void setSellMonth(String sellMonth) {
		this.sellMonth = sellMonth;
	}

	public String getsId() {
		return sId;
	}

	public void setsId(String sId) {
		this.sId = sId;
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
