package com.ashleybattles.ibelieveinme.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ashleybattles.ibelieveinme.models.Applicant;
import com.ashleybattles.ibelieveinme.services.ApplicantService;
import com.ashleybattles.ibelieveinme.services.UserService;


@Controller
public class DanceFormController {
	
	@Autowired
	ApplicantService applicantServ;
	
	@Autowired
	private UserService userServ;
	

	
	@GetMapping("/applicant/new")
	public String newScholar(@ModelAttribute("newApplicant") Applicant applicantobj,Model model) {
		
//		//create the applicants form
//		Applicant newApplicant = new Applicant();
//		model.addAttribute("applicant", newApplicant);

		
		return "scholarshipForm.jsp";
	}

	
	//add an applicant
	@PostMapping("/scholarform")
	public String danceForm(@Valid @ModelAttribute("newApplicant") Applicant applicantobj, BindingResult result, Model model) {
		if(result.hasErrors()) {
//			List<Applicant> applicants = applicantServ.getAll();
//			model.addAttribute("applicants", applicants);
			return "scholarshipForm.jsp";
		}else {
			Applicant addApplicant = applicantServ.save(applicantobj);
//			applicantServ.save(applicantobj);
			return "redirect:/dance";
		}
	}

}
