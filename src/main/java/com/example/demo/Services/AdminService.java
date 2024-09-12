package com.example.demo.Services;

import java.util.List;

import com.example.demo.Model.Admin;
import com.example.demo.Model.LoanApplicant;

public interface AdminService 
{
	public Admin checkadmindata(String email,String pass);
	
	public List<LoanApplicant> getalldata();
	
	public LoanApplicant getsingleinfo(int aid);
	
	public void updateLoanStatus(LoanApplicant l1);

}
