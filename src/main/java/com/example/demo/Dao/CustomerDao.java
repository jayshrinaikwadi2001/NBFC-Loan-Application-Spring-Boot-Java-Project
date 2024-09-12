package com.example.demo.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.Customer;
import com.example.demo.Model.LoanApplicant;
import com.example.demo.Repo.CustomerRepo;
import com.example.demo.Services.customerService;

@Service
public class CustomerDao implements customerService
{
	@Autowired
	CustomerRepo cr;

	@Override
	public void register(Customer c1)
	{
		cr.save(c1);

	}

	@Override
	public Customer checkdata(String email) {
		return cr.findByEmail(email);
		
		
		
	}

	@Override
	public Customer checkboth(String email, String pass) {
		
		return cr.findByEmailAndPass(email, pass);
	}

	@Override
	public Customer checkname(String name) {
		
		return cr.findByName(name);
	}

	@Override
	public List<Customer> getallinfo() {
		
		return cr.findAll();
	}

	
	

	

	

	

}
