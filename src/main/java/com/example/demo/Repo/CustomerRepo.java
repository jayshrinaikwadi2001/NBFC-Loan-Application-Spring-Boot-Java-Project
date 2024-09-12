package com.example.demo.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Model.Customer;



@Repository
public interface CustomerRepo extends JpaRepository<Customer, Integer>
{
	//custom method for checking mail from Customer Table
    public Customer findByEmail(String email);
    
  //custom method for checking mail and password from Customer Table
     public Customer findByEmailAndPass(String email,String pass);
     
     //custom method for checking Name from Customer Table
     public Customer findByName(String name);
     
   
    
}
