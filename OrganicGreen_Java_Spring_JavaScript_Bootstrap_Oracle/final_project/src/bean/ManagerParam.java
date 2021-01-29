package bean;

public class ManagerParam {
	String findStr = "";
	int nowPage = 1;
	int serial = 0;
	int startNo = 1;
	int endNo = 1;
	int totPage = 0;
	
	//SHS 추가 11.08 - 검색 옵션
	int searchOption;

	// 배송 현황
	String searchStatus; // 배송 카드 선택시 입력되는값
	
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

	// 배송 현황 Null값일때, 배송현황 페이지 초기 진입 시 처리
	public String getSearchStatus() {
		if (searchStatus == null) {
			searchStatus = "";
		}
		return searchStatus;
	}

	public void setSearchStatus(String searchStatus) {
		this.searchStatus = searchStatus;
	}

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
