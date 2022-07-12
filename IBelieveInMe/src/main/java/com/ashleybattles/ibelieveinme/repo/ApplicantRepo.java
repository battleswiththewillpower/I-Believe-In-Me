package com.ashleybattles.ibelieveinme.repo;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.ashleybattles.ibelieveinme.models.Applicant;



public interface ApplicantRepo extends CrudRepository<Applicant, Long> {
	List<Applicant> findAll();
	
	Optional<Applicant>findByEmail(String email);
}
