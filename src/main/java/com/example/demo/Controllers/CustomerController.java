package com.example.demo.Controllers;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Model.Customer;
import com.example.demo.Model.LoanApplicant;
import com.example.demo.Services.LoanApplicantService;
import com.example.demo.Services.customerService;



@Controller
public class CustomerController
{
	@Autowired
	customerService cs;              //Reference of Customer Service
	
	@Autowired
	LoanApplicantService ls;         //Reference of Loan Applicant Service 
	
	//Default page load/Index page mapping
	@RequestMapping("/")
	public String one()
	{
		return "index";
	}
	
	//Home  page mapping
	@RequestMapping("/home")
	public String home()
	{
		return "index";
	}
	
	//Personal  Loan page mapping
	@RequestMapping("/PersonalLoan")
	public String two()
	{
		return "PersonalLoan";
	}
	
	//Business Loan page mapping
	@RequestMapping("/BusinessLoan")
	public String three()
	{
		return "BusinessLoan";
	}
	
	
	//Home Loan page mapping
	@RequestMapping("/HomeLoan")
	public String four()
	{
		return "HomeLoan";
	}
	
	//Calculator Page mapping
	@RequestMapping("/Calculator")
	public String five()
	{
		return "Calculator";
	}
	
	//Deposite page Mapping
	@RequestMapping("/Deposit")
	public String six()
	{
		return "Deposit";
	}
	
	//Register page Mapping
	@RequestMapping("/register")
	public String Eight()
	{
		return "register";
	}
	
	//Login page Mapping
		@RequestMapping("/login")
		public String nine()
		{
			return "login";
		}
	
	//Contact page Mapping
		@RequestMapping("/contact")
		public String contact()
		{
			return "contact";
		}
	
	
	
//Data getting from Form
	@PostMapping("/storedata")
	public String nine(@ModelAttribute("c1") Customer c1)
	{
		Customer cp=cs.checkdata(c1.getEmail());
		if(cp==null)
		{
		  if(c1.getPass().equals(c1.getCpass()))
		   {
		     cs.register(c1);
	         return "redirect:/login";
		    }
		}
		return "register";
	}
	
	
	
	//check creditional for login 
	@PostMapping("/checkdata")
	public String ten(@RequestParam("email") String email,@RequestParam("pass") String pass,HttpSession s1)
	{
		Customer cc= cs.checkboth(email, pass);
		if(cc==null)
		{
			return "redirect:/login";
		}
		s1.setAttribute("temp",cc.getName());
		s1.setAttribute("temp1",cc.getEmail());
		return "redirect:/Dashbord";
		
	}
	
	
	//Dashboard page mapping
	@RequestMapping("/Dashbord")
	public String display(Model m,HttpServletRequest request)
	{
		HttpSession s1=request.getSession(false);
		String x=(String) s1.getAttribute("temp");
		
		if(x!=null)
		{
			
			List<Customer> c1=cs.getallinfo();
			m.addAttribute("mm",c1);
		return "Dashbord";
		}
		return "redirect:/login";
	}
	
	//Logout mapping
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request)
	{
		HttpSession s1=request.getSession();
		s1.invalidate();
		return "redirect:/login";
	}
	
	//Apply now form page mapping
	@RequestMapping("/ApplyNow")
	public String ApplyNow(HttpServletRequest request)
	{
		HttpSession s1=request.getSession(false);
		String x=(String) s1.getAttribute("temp");
		
		if(x!=null)
		{
		
			return "ApplyNow";
		}
		
		return "redirect:/login";	
			
	}
	
	//ApplyNow Data Store at Backend          ****After Applying for Loan Customer is now Loan Applicant****
		@PostMapping("/applicantdata")
		public String applicantdata(@ModelAttribute("l1") LoanApplicant l1)
		{
			LoanApplicant lp=ls.checkemail(l1.getAemail());   //only one loan at time
			if(lp==null)
			{
				ls.RegisterApplicant(l1);
				return "redirect:/Dashbord";
			}
			
			return "redirect:/Notapplicable";
		}
		
		
		//NotApplicable page Mapping
		@RequestMapping("/Notapplicable")
		public String Notapplicable()
		{
			
			return "Notapplicable";
				
		
		}
		
		@RequestMapping("/Back")
		public String Back()
		{
			
			return "Dashbord";
				
		
		}

		
		
		
		//Profile page Mapping
				@RequestMapping("/Profile")
				public String Profile(Model m,HttpServletRequest request)
				{
					HttpSession s1=request.getSession(false);
					String x=(String) s1.getAttribute("temp");
					String y=(String) s1.getAttribute("temp1");
					
					
					if(x!=null)
					{
					
					
						return "Profile";
					}
					return "redirect:/login";
						
					
				}
				
				
				//Update Profile Page Mapping
				@RequestMapping("/updateProfile")
				public String updateProfile(HttpServletRequest request)
				{
					HttpSession s1=request.getSession(false);
					String x=(String) s1.getAttribute("temp");
					
					if(x!=null)
					{
					
					return "updateProfile";
					}
					return "redirect:/login";
				}
				
				
			
				@GetMapping("/edit/{aemail}")
				public String edit(@PathVariable String aemail,Model m)
				{
					LoanApplicant gs=ls.getsingleinfo(aemail);
					m.addAttribute("kk", gs);
					return "updateProfile";
				}
				
				
				//Update  Data Store at Backend          ****Update Loan applicant data in Loan Applicant table****
				@PostMapping("/Update")
				public String update(@ModelAttribute("cf")LoanApplicant cf,HttpServletRequest request)
				{
					HttpSession s1=request.getSession(false);
					String x=(String) s1.getAttribute("temp");
					
					if(x!=null)
					{
					LoanApplicant l=new LoanApplicant();
					l.setAid(cf.getAid());
					l.setAname(cf.getAname());
					l.setAemail(cf.getAemail());
					l.setPhone_no(cf.getPhone_no());
					l.setDob(cf.getDob());
					l.setIncome_range(cf.getIncome_range());
					l.setAddr(cf.getAddr());
					l.setRate(cf.getRate());
					l.setEmi(cf.getEmi());
					l.setTenure(cf.getTenure());
					l.setState(cf.getState());
					l.setAmount(cf.getAmount());
					l.setLoan_purpose(cf.getLoan_purpose());
					l.setLoan_date(cf.getLoan_date());
					l.setTotal_amt(cf.getTotal_amt());
					l.setEmiResult(cf.getEmiResult());
					l.setAdharno(cf.getAdharno());
					l.setPanno(cf.getPanno());
					l.setLoan_status(cf.getLoan_status());
					
					ls.RegisterApplicant(l);
					return "redirect:/Dashbord";
					
					}
					return "redirect:/login";
				}
				
				
				
				
				
				
				@GetMapping("/Applied/{aemail}")
				public String Applied(@PathVariable String aemail,Model m)
				{
					LoanApplicant gs=ls.getsingleinfo(aemail);
					m.addAttribute("kk", gs);
					if(gs!=null)
					{
						return "AppliedLoan";	
					}
					return "NotFound";
				}
				
				//AppliedLoan  Loan page mapping
				@RequestMapping("/AppliedLoan")
				public String AppliedLoan()
				{
					return "AppliedLoan";
				}
				
				//closeAppliedLoan  Form action mapping
				@RequestMapping("/closeAppliedLoan")
				public String closeAppliedLoan()
				{
					return "redirect:/Dashbord";
				}
				
				
				//NotFound  Page mapping
				@RequestMapping("/NotFound")
				public String NotFound()
				{
					return "NotFound";
				}
				
				@RequestMapping("/Back1")
				public String Back1()
				{
					
					return "Dashbord";
						
				}
				
				
				
				@GetMapping("/Approved/{aemail}")
				public String Approved(@PathVariable String aemail, Model m) {
				    LoanApplicant gs = ls.getsingleinfo(aemail);

				    // Check if gs is null to avoid NullPointerException
				    if (gs != null) {
				        String ls = gs.getLoan_status();
				        String cs = "Approved";
				        m.addAttribute("kk", gs);
				        
				        // Check if ls is equal to cs (Approved)
				        if (ls != null && ls.equals(cs)) {
				            return "ApprovedLoan";
				        }
				    }
				    
				    // If gs is null or ls is not equal to cs, return NotFound
				    return "NotFound";
				}
				
				
				//ApprovedLoan Page Mapping
				@RequestMapping("/ApprovedLoan")
				public String ApprovedLoan()
				{
					
					return "ApprovedLoan";
						
				}
				
				//AddWalletBalance  page mapping
				@RequestMapping("/AddWalletBalance")
				public String AddWalletBalance()
				{
					return "AddWalletBalance";
				}
				
				
				@GetMapping("/AddWallet/{aemail}")
				public String AddWallet(@PathVariable String aemail,Model m)
				{
					LoanApplicant gs=ls.getsingleinfo(aemail);
					m.addAttribute("kk", gs);
					
						return "AddWalletBalance";	
					
				}
				
				//viewWalletBalance  page mapping
				@RequestMapping("/viewWalletBalance")
				public String viewWalletBalance()
				{
					return "viewWalletBalance";
				}
				
				@GetMapping("/viewWallet/{aemail}")
				public String viewWallet(@PathVariable String aemail,Model m)
				{
					LoanApplicant gs=ls.getsingleinfo(aemail);
					m.addAttribute("kk", gs);
					
						return "viewWalletBalance";	
					
				}
				
				
				
				

}
