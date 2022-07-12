package com.ashleybattles.ibelieveinme.controllers;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;



import com.ashleybattles.ibelieveinme.models.LoginUser;
import com.ashleybattles.ibelieveinme.models.User;
import com.ashleybattles.ibelieveinme.services.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userServ;
	
	
	@GetMapping("/admin")
	public String index(Model model, HttpSession session) {
		if(session.getAttribute("userId") != null) {
			
			return "redirect:/dashboard";
		}
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		
		return "Reg-Login.jsp";
	}

	
	@PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, 
            BindingResult result, Model model, HttpSession session) {
		User user = userServ.register(newUser, result);
        
        // TO-DO Later -- call a register method in the service 
        // to do some extra validations and create a new user!
        
        if(result.hasErrors()) {
            // Be sure to send in the empty LoginUser before 
            // re-rendering the page.
            model.addAttribute("newLogin", new LoginUser());
            return "Reg-Login.jsp";
        }
     
     		if(userServ.getAll().size()==0) {
     			userServ.newUser(newUser, 9); //admin
     		}else {
     			userServ.newUser(newUser, 3); //users
     		}
        
        // No errors! 
        // TO-DO Later: Store their ID from the DB in session, 
        // in other words, log them in.
        
        session.setAttribute("uuid", newUser.getId());
    
        return "redirect:/dashboard";
    }
	
	
    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
            BindingResult result, Model model, HttpSession session) {
    	User user = userServ.login(newLogin, result);
        // Add once service is implemented:
        // User user = userServ.login(newLogin, result);
    
        if(result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "Reg-Login.jsp";
        }
    
        // No errors! 
        // TO-DO Later: Store their ID from the DB in session, 
        // in other words, log them in.
        session.setAttribute("uuid", user.getId());
    
        return "redirect:/dashboard";
    }
    
    
	@GetMapping("/dashboard")
	public String userDashboard(Model model, HttpSession session ) {
		//check if user is logged in
		if(session.isNew() || session.getAttribute("uuid")==null) {
			return "redirect:/sign";
		}
		//logged in user
		model.addAttribute("user",userServ.getOne((Long)session.getAttribute("uuid")));
		//get all of the card information

		

		return "donor-dashboard.jsp";
	}
    
	
    //create admin dashboard
    
//	@RequestMapping("/admin")
//	public String adminPage(Model model) {
//		//find the current users email to check for admin
////		model.addAttribute("currentUser", userServ.findByEmail(email));
//		model.addAttribute("users", userServ.getAll());
//		return "adminPage.jsp";
//	}
	
	//EDIIT / UPDATE WHICH SHARES .SAVE
		@GetMapping("/user/{id}/edit")
	    public String edit(@PathVariable("id") Long id, Model model, HttpSession session) {
			if(session.isNew() || session.getAttribute("uuid")==null) {
				return "redirect:/sign";
			}
			model.addAttribute("user",userServ.getOne((Long)session.getAttribute("uuid")));
			
	        model.addAttribute("editUser", userServ.getOne(id));
//	        List<> states = new ArrayList<String>();
//	        states.add("california");
//	        states.add("");
//	        
//	       
	        
	        return "userEdit.jsp";
	    }
		
		//fix update
		@PutMapping("/user/{id}/edit")
		public String update(@Valid @ModelAttribute("editUser") User editUser, BindingResult result, @PathVariable("id") Long id,Model model, HttpSession session) {
			if(session.isNew() || session.getAttribute("uuid")==null) {
				return "redirect:/sign";
			}
			model.addAttribute("user",userServ.getOne((Long)session.getAttribute("uuid")));
			model.addAttribute("editUser", userServ.getOne(id));
			if(result.hasErrors()) {
//				System.out.println(editAuthor.getId());
				return "userEdit.jsp";
			}else {
				userServ.updateUser(editUser);
				return "redirect:/dashboard";
				
			}
		}
    
    @GetMapping("/logout")
    public String logout(HttpSession session) {
    	session.removeAttribute("uuid");
    	return "redirect:/sign";
    }

}
