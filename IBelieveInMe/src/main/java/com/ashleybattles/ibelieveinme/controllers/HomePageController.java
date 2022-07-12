package com.ashleybattles.ibelieveinme.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.ashleybattles.ibelieveinme.services.ApplicantService;
import com.ashleybattles.ibelieveinme.services.UserService;

@Controller
public class HomePageController {
	
	@Autowired
	ApplicantService applicantServ;
	
	@Autowired 
	UserService userServ;
	
	@GetMapping("/")
	public String homePage() {
		return "home.jsp";
	}
	
	@GetMapping("/about")
	public String about() {
		return "about.jsp";
	}
	
	@GetMapping("/dance")
	public String dancePage() {
		return "dance.jsp";
	}
	
	
	@GetMapping("/donor")
	public String donors() {
		return "donor.jsp";
	}
	
	
	@GetMapping("/contact")
	public String contact() {
		return "contact.jsp";
	}
	//register and login

}
