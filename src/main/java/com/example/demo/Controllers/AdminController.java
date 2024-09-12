package com.example.demo.Controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Model.Admin;
import com.example.demo.Model.Customer;
import com.example.demo.Model.LoanApplicant;
import com.example.demo.Services.AdminService;

@Controller
public class AdminController
{
	@Autowired
	AdminService as;
	
	
	//AdminLogin page mapping
	@RequestMapping("AdminLogin")
	public String AdminLogin()
	{
		return "AdminLogin";
	}
	
	//Cheking data for Admin Login
	@PostMapping("/checkadmindata")
	public String one(@RequestParam("email") String email,@RequestParam("pass") String pass,HttpSession s2)
	{
		Admin aa=as.checkadmindata(email, pass);
		if(aa==null)
		{
			return "redirect:/AdminLogin";
		}
		s2.setAttribute("temp", aa.getName());
		return "redirect:/AdminDashbord";
		
	}
	
	
	//AdminDashbord page mapping
		@RequestMapping("AdminDashbord")
		public String AdminDashbord(Model m,HttpServletRequest request)
		{
			HttpSession s2=request.getSession(false);
			String x=(String) s2.getAttribute("temp");
			
			List<LoanApplicant> la=as.getalldata();
			m.addAttribute("mm",la);
			
			if(x!=null)
			{
			return "AdminDashbord";
			}
			return "redirect:/AdminLogin";
			
		}
		
		//View data Mapping
		@GetMapping("/view/{aid}")
		public String view(@PathVariable int aid,Model m)
		{
			LoanApplicant lt=as.getsingleinfo(aid);
			m.addAttribute("mm",lt);
			return "AdminView";
		}
		
		
		//Logout mapping
		@RequestMapping("/adminlogout")
		public String logout(HttpServletRequest request)
		{
			HttpSession s2=request.getSession();
			s2.invalidate();
			return "redirect:/AdminLogin";
		}
		
		
		@PostMapping("/LoanStatusUpdate")
		public String LoanStatusUpdate(@ModelAttribute("lf") LoanApplicant lf )
		{
			LoanApplicant l=new LoanApplicant();
			l.setLoan_status(lf.getLoan_status());
			l.setAid(lf.getAid());
			l.setAname(lf.getAname());
			l.setAemail(lf.getAemail());
			l.setAddr(lf.getAddr());
			l.setPhone_no(lf.getPhone_no());
			l.setDob(lf.getDob());
			l.setIncome_range(lf.getIncome_range());
			l.setRate(lf.getRate());
			l.setEmi(lf.getEmi());
			l.setTenure(lf.getTenure());
			l.setState(lf.getState());
			l.setAmount(lf.getAmount());
			l.setLoan_purpose(lf.getLoan_purpose());
			l.setLoan_date(lf.getLoan_date());
			l.setTotal_amt(lf.getTotal_amt());
			l.setEmiResult(lf.getEmiResult());
			l.setAdharno(lf.getAdharno());
			l.setPanno(lf.getPanno());
			as.updateLoanStatus(l);
			
			return "redirect:/AdminDashbord"; 
		}
		
		
		
}