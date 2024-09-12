package com.example.demo.Dao;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import com.example.demo.Model.LoanApplicant;
import com.example.demo.Repo.LoanApplicantRepo;
import com.example.demo.Services.LoanApplicantService;

@Service
public class LoanApplicantDao implements LoanApplicantService
{
	@Autowired
	LoanApplicantRepo lr;

	
	public void RegisterApplicant(LoanApplicant l1)
	{
		lr.save(l1);
		
	}


	
	public LoanApplicant checkname(String aname)
	{
		
		return lr.findByAname(aname);
	}



	
	public LoanApplicant checkemail(String aemail) {
		
		return lr.findByAemail(aemail);
	}



	@Override
	public LoanApplicant getsingleinfo(String aemail) {
		
		return lr.getByAemail(aemail);
	}






	
	



	



	



	
	



	
	


	

	

	
	
}
