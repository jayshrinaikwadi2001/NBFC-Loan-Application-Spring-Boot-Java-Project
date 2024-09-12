package com.example.demo.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Model.Admin;
import com.example.demo.Model.Customer;

@Repository
public interface AdminRepo extends JpaRepository<Admin,Integer>
{
	//custom method for checking mail and password from Admin Table
    public Admin findByEmailAndPass(String email,String pass);

}
