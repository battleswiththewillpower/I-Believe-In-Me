package com.ashleybattles.ibelieveinme.services;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;


import com.ashleybattles.ibelieveinme.models.LoginUser;
import com.ashleybattles.ibelieveinme.models.User;

import com.ashleybattles.ibelieveinme.repo.UserRepo;



@Service
public class UserService {
	
	@Autowired
	private UserRepo userRepo;
	
	

    public User register(User newUser, BindingResult result) {
        // TO-DO: Additional validations!
    	if(userRepo.findByEmail(newUser.getEmail()).isPresent()) {
    		result.rejectValue("email", "Unique", "Email already taken!");
    	}
    	//if they dont match
    	if(!newUser.getPassword().equals(newUser.getConfirm())) {
    		result.rejectValue("confirm", "Matches", "Must match password and confirm password!");
    	}
    	if(result.hasErrors()) {
    		return null;
    	}
    	//hash password
        String hashBrowns = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
        newUser.setPassword(hashBrowns);
        
        return userRepo.save(newUser);
    }
    
    
    public User login(LoginUser newLogin, BindingResult result) {
        // TO-DO: Additional validations!
    	if(result.hasErrors()) { //checks for credentials
    		return null;
    	}
    	Optional<User>optUser=userRepo.findByEmail(newLogin.getEmail());
    	if(!optUser.isPresent()) {
    		result.rejectValue("email", "Unique", "Invalid Credentials");
    		return null;
    	}
    	User user=optUser.get();
    	if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
    		result.rejectValue("password", "Matches", "Invalid Credentials");
    		return null;
    	
    	}
    	
        return user;
    }
    
    
    
    //read
    public User getOne(Long id) {
    	return userRepo.findById(id).orElse(null);
    }
    
    public List<User> getAll(){
		return userRepo.findAll();
	}
    
	public void newUser(User user, int role) {
		user.setRoleLevel(role);
		userRepo.save(user);
	}
    
//	public User upgradeUser(User user) {
//		user.setRoleLevel(roleRepo.findByName("ROLE_ADMIN"));
//		return userRepo.save(user);
//	}
	
	public void deleteUser(User user) {
		userRepo.delete(user);
	}
	
//	public User findByEmail(String email) {
//		return userRepo.findByEmail(email);
//	}
//	
	public void updateUser(User user) {
		userRepo.save(user);
	}



}
