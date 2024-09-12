package com.example.demo.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Transactions 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int tid;
	private String aemail;
	private Double amount;
	private int tenure;
	private String loan_date;
	private Double total_amt;
	private Double remaining_amt;
	private String emiResult;
	private Double applicant_WalletBalance;
	private Double admin_WalletBalance;
	
	
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getAemail() {
		return aemail;
	}
	public void setAemail(String aemail) {
		this.aemail = aemail;
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	
	public int getTenure() {
		return tenure;
	}
	public void setTenure(int tenure) {
		this.tenure = tenure;
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
	public String getEmiResult() {
		return emiResult;
	}
	public void setEmiResult(String emiResult) {
		this.emiResult = emiResult;
	}
	public Double getApplicant_WalletBalance() {
		return applicant_WalletBalance;
	}
	public void setApplicant_WalletBalance(Double applicant_WalletBalance) {
		this.applicant_WalletBalance = applicant_WalletBalance;
	}
	public Double getAdmin_WalletBalance() {
		return admin_WalletBalance;
	}
	public void setAdmin_WalletBalance(Double admin_WalletBalance) {
		this.admin_WalletBalance = admin_WalletBalance;
	}
	public Double getRemaining_amt() {
		return  remaining_amt;
	}
	public void setRemaining_amt(Double remaning_amt) {
		this. remaining_amt = remaning_amt;
	}
	

	
}
