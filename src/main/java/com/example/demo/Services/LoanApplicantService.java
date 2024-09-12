package com.example.demo.Services;


import com.example.demo.Model.LoanApplicant;

public interface LoanApplicantService
{
	public void RegisterApplicant(LoanApplicant l1);
	
	public LoanApplicant checkname(String aname);
	
	public LoanApplicant checkemail(String aemail);
	
	public LoanApplicant getsingleinfo(String aemail);
	
	
	
	
	
	
	
	
	
	
}
