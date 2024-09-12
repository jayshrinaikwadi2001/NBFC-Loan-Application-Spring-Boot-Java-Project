package com.example.demo.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Model.Customer;
import com.example.demo.Model.LoanApplicant;

@Repository
public interface LoanApplicantRepo extends JpaRepository<LoanApplicant, Integer> 
{
	//custom method for checking Name from LoanApplicant Table
    public LoanApplicant findByAname(String aname);
    
  //custom method for checking Email from LoanApplicant Table
    public LoanApplicant findByAemail(String aemail);
    
  //custom method for Geting all information using email from LoanApplicant Table
    public LoanApplicant getByAemail(String aemail);
    
  
 
  
  
    

}
