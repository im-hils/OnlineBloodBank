package com.blood;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BloodBankController {
	DonorDAO donordao=new DonorDAO();
	boolean loginStatus;
	boolean isUserExists;
	boolean isDonorExists;
	List<Donor> donorDetails;
	
	//Action Links
	//Login Action
	@RequestMapping(value="login", method = RequestMethod.POST)
	public ModelAndView display(@ModelAttribute("us") Donor donor,HttpServletRequest request) {
		loginStatus=donordao.loginCheck(donor);
		if(loginStatus==true ) {
			HttpSession session=request.getSession();
			donorDetails=donordao.donorDetails(donor);
			session.setAttribute("donorDetails", donorDetails);
			ModelAndView mv=new ModelAndView("DonorHome");
			return mv;
		}
		else
		{
			ModelAndView mv=new ModelAndView("LoginError");
			return mv;
		}
		
	}
	
	//Registration Action
	@RequestMapping(value="register",method = RequestMethod.POST)
	public ModelAndView createUser(@ModelAttribute("us") Donor donor,HttpServletRequest request)
	{
		isUserExists=donordao.isUserExists(donor);
		HttpSession session=request.getSession(); 
		session.setAttribute("username", donor.getEmail());
		if(isUserExists==false) {
		donordao.insert(donor);
		ModelAndView mv= new ModelAndView("DonorRegistrationSuccess");
		session.setAttribute("password", donor.getPassword());
		return mv;
		}
		else
		{
			ModelAndView mv=new ModelAndView("DonorRegistrationError");
			return mv;
		}
	}
	
	@RequestMapping(value="delete")
	public ModelAndView deleteAccount(Donor donor) {
		donordao.deleteAccount(donor);
		ModelAndView mv=new ModelAndView("Login");
		return mv;
		
	}
	
	@RequestMapping(value="myProfile")
	public ModelAndView displayMyProfile() {
		ModelAndView mv=new ModelAndView("DonorHome");
		return mv;
		
	}
	
	@RequestMapping(value="editProfile")
	public ModelAndView displayEditMyProfile() {
		ModelAndView mv=new ModelAndView("EditProfile");
		return mv;	
	}
	
	@RequestMapping(value="donorSearch")
	public ModelAndView donorSearch(@ModelAttribute("us") Donor donor,HttpServletRequest request) {
		isDonorExists=donordao.donorCheck(donor);
		if(isDonorExists==true ) {
			HttpSession session=request.getSession();
			donorDetails=donordao.searchDonor(donor);
			session.setAttribute("donorList", donorDetails);
			ModelAndView mv=new ModelAndView("SearchResults");
			return mv;
		}
		else {
			ModelAndView mv=new ModelAndView("SearchError");
			return mv;
		}
	}
		
	
	@RequestMapping(value="updateProfile",method = RequestMethod.POST)
	public ModelAndView updateMyProfile(@ModelAttribute("us") Donor donor,HttpServletRequest request) {
		ModelAndView mv=new ModelAndView("DonorHome");
		donordao.updateDonor(donor);
		return mv;	
	}
	
	@RequestMapping(value="Logout")
	public ModelAndView displayLogout() {
		ModelAndView mv=new ModelAndView("Login");
		return mv;
		
	}
	
	
	//Page Links
	@RequestMapping(value="/Home")
	public ModelAndView displayHome() {
		ModelAndView mv=new ModelAndView("Home");
		return mv;
		
	}
	@RequestMapping(value="/DonorRegistration")
	public ModelAndView displayRegitration() {
		ModelAndView mv=new ModelAndView("DonorRegistration");
		return mv;
		
	}
	
}
