package com.example.demo.Services;

import java.util.List;

import com.example.demo.Model.Customer;
import com.example.demo.Model.LoanApplicant;

public interface customerService
{
public void register (Customer c1);

public Customer checkdata(String email);
public Customer checkboth(String email,String pass);
public Customer checkname(String name);

//custom method for transfer Name & mail to dashboard from Customer Table
public List<Customer> getallinfo();



}
