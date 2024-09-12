package com.example.demo.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.Admin;
import com.example.demo.Model.LoanApplicant;
import com.example.demo.Repo.AdminRepo;
import com.example.demo.Repo.LoanApplicantRepo;
import com.example.demo.Services.AdminService;

@Service
public class AdminDao implements AdminService 
{
	@Autowired
	AdminRepo ar;
	@Autowired
	LoanApplicantRepo lr;

	@Override
	public Admin checkadmindata(String email, String pass) {
		
		return ar.findByEmailAndPass(email, pass);
	}

	@Override
	public List<LoanApplicant> getalldata()
	{
		
		return lr.findAll();
	}

	@Override
	public LoanApplicant getsingleinfo(int aid) 
	{
		
		return lr.getById(aid);
	}

	@Override
	public void updateLoanStatus(LoanApplicant l1)
	{
		
		lr.save(l1);
	}

	
	
	

}
