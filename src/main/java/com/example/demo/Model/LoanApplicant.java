package com.example.demo.Model;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class LoanApplicant
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int aid;
	private String aname;
	private String aemail;
	private String phone_no;
	private String dob;
	private String income_range;
	private String addr;
	private String rate;
	private String emi;
	private int tenure;
	private String state;
	private Double amount;
	private String loan_purpose;
	private String loan_date;
	private Double total_amt;
	private String emiResult;
	private String adharno;
	private String panno;
	
	private String loan_status;
	public String getLoan_status() {
			return loan_status;
		}
		public void setLoan_status(String loan_status) {
			this.loan_status = loan_status;
		}
	
	
	public String getIncome_range() {
		return income_range;
	}
	public void setIncome_range(String income_range) {
		this.income_range = income_range;
	}
	public int getTenure() {
		return tenure;
	}
	public void setTenure(int tenure) {
		this.tenure = tenure;
	}
	public String getAemail() {
		return aemail;
	}
	public void setAemail(String aemail) {
		this.aemail = aemail;
	}
	public String getEmiResult() {
		return emiResult;
	}
	public void setEmiResult(String emiResult) {
		this.emiResult = emiResult;
	}
	
	
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	
	public String getPhone_no() {
		return phone_no;
	}
	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	
	public String getEmi() {
		return emi;
	}
	public void setEmi(String emi) {
		this.emi = emi;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	public String getLoan_purpose() {
		return loan_purpose;
	}
	public void setLoan_purpose(String loan_purpose) {
		this.loan_purpose = loan_purpose;
	}
	public String getLoan_date() {
		return loan_date;
	}
	public void setLoan_date(String loan_date) {
		this.loan_date = loan_date;
	}
	public Double getTotal_amt() {
		return total_amt;
	}
	public void setTotal_amt(Double total_amt) {
		this.total_amt = total_amt;
	}
	
	public String getPanno() {
		return panno;
	}
	public void setPanno(String panno) {
		this.panno = panno;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAdharno() {
		return adharno;
	}
	public void setAdharno(String adharno) {
		this.adharno = adharno;
	}
	
	
	
	
	 
	
	

}
