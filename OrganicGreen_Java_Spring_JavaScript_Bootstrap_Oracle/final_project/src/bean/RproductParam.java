package bean;

public class RproductParam {
	// 초기값 안넣으면 null이 나올 수 있음
		String findStr="";
		int nowPage=1;
		int serial=0;
		int startNo=0;
		int endNo=0;
		int totPage=0;
		
	// 임시 메뉴 나중에 지우자
		String rSerial;
		String rSubject;
		
		public String getrSerial() {
			return rSerial;
		}
		public void setrSerial(String rSerial) {
			this.rSerial = rSerial;
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
		public String getrSubject() {
			return rSubject;
		}
		public void setrSubject(String rSubject) {
			this.rSubject = rSubject;
		}
		
		
		
}
