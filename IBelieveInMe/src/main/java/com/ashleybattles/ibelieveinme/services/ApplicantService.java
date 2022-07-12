package com.ashleybattles.ibelieveinme.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.ashleybattles.ibelieveinme.models.Applicant;

import com.ashleybattles.ibelieveinme.repo.ApplicantRepo;

@Service
public class ApplicantService {
	
	@Autowired
	private ApplicantRepo applicantRepo;
	
	//pass in email
	
    public Applicant register(Applicant newApp, BindingResult result) {
    	if(applicantRepo.findByEmail(newApp.getEmail()).isPresent()) {
    		result.rejectValue("email", "Unique", "Email already taken!");
    	}
    	if(result.hasErrors()) {
    		return null;
    	}
    	
    	return applicantRepo.save(newApp);
    }
    
	public Applicant save(Applicant a) {
		return applicantRepo.save(a);
	}
	
	
    public Applicant getOne(Long id) {
    	return applicantRepo.findById(id).orElse(null);
    }
    
    public List<Applicant> getAll(){
		return applicantRepo.findAll();
	}
	
	public void delete(Long id) {
		applicantRepo.deleteById(id);
	}

}
