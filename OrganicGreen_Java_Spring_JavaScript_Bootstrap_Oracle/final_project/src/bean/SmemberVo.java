package bean;

public class SmemberVo {
   String sId;
   String sPwd;
   String sName;
   String sEmail;
   String sPhone; // -생략 
   String sAddress;
   String sbNumber; //사업자번호 
   String sfName; //상호 
   String spName; // 판매상품 
   String sDate; // 가입일 
   String sPostal;
   String sAccount;
   
   public String getsId() {
	return sId;
}
public void setsId(String sId) {
	this.sId = sId;
}
public String getsbNumber() {
	return sbNumber;
}
public void setsbNumber(String sbNumber) {
	this.sbNumber = sbNumber;
}
public String getsfName() {
	return sfName;
}
public void setsfName(String sfName) {
	this.sfName = sfName;
}
public String getspName() {
	return spName;
}
public void setspName(String spName) {
	this.spName = spName;
}
public String getsAccount() {
	return sAccount;
}
public void setsAccount(String sAccount) {
	this.sAccount = sAccount;
}
public String getsBank() {
	return sBank;
}
public void setsBank(String sBank) {
	this.sBank = sBank;
}
String sBank;
   
public String getsPwd() {
	return sPwd;
}
public void setsPwd(String sPwd) {
	this.sPwd = sPwd;
}
public String getsName() {
	return sName;
}
public void setsName(String sName) {
	sName = sName;
}
public String getsEmail() {
	return sEmail;
}
public void setsEmail(String sEmail) {
	this.sEmail = sEmail;
}
public String getsPhone() {
	return sPhone;
}
public void setsPhone(String sPhone) {
	this.sPhone = sPhone;
}
public String getsAddress() {
	return sAddress;
}
public void setsAddress(String sAddress) {
	this.sAddress = sAddress;
}
public String getsDate() {
	return sDate;
}
public void setsDate(String sDate) {
	this.sDate = sDate;
}
public String getsPostal() {
	return sPostal;
}
public void setsPostal(String sPostal) {
	this.sPostal = sPostal;
}

}