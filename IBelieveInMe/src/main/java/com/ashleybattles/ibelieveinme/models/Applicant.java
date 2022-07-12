package com.ashleybattles.ibelieveinme.models;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;



@Entity
@Table(name="applicants")
public class Applicant {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
    @NotEmpty(message="first name is required!")
    @Size(min=2, message="Minimum 2 characters")
    private String firstName;
    
    @NotEmpty(message="last name is required!")
    @Size(min=2, message="Minimum 2 characters")
    private String lastName;
    
  
    @Size(min = 2, message = "Please Choose!")
    private String country;
    
    
    @Size(min = 2, message = "Please Choose!")
    private String state;
    
    @NotEmpty(message="Telephone is required!") //figure out how to pass in number
    @Size(min=2, message="Minimum 2 characters")
    private String telephone;
    
    @NotEmpty(message="Email is required!")
    @Email(message="Please enter a valid email!")
    private String email;
    
    @Size(min = 2, message = "Name is required, at least 2 characters!")
    private String studioName;
    
    @Size(min = 2, message = "Location is required, at least 2 characters!")
    private String danceStudioLocation;
    
    @Size(min = 2, message = "Name is required, at least 2 characters!")
    private String programName;
    
    @Size(min = 2, message = "Choreographer name is required, at least 2 characters!")
    private String choreographer;
    
    @NotNull(message = "Must be in the future!")
    @Future(message = "Must be in the future!")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date programDate;
    
    @NotEmpty(message="Instagram handle is required!")
    @Size(min=8, max=128, message="Instagram handle is needed! if you are too young for instagram please put underage")
    private String instagramHandle;
    
    @NotEmpty(message="Please include website or link to youtube videos")
    @Size(min=2, message="Minimum 2 characters")
    private String website;
    
    @NotEmpty(message="Your story is required!")
	@Size(min=150, message="Please submit story, Minimum 150 characters")
	private String story;
    
    
    //Relationship
    @OneToMany(mappedBy="applicant", cascade=CascadeType.ALL, fetch = FetchType.LAZY)
    private List<User> users;
    

    
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	public Applicant() {
		
	}
	

	
	
	public Long getId() {
		return id;
	}




	public void setId(Long id) {
		this.id = id;
	}





	public String getFirstName() {
		return firstName;
	}





	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}





	public String getLastName() {
		return lastName;
	}





	public void setLastName(String lastName) {
		this.lastName = lastName;
	}






	public String getCountry() {
		return country;
	}






	public void setCountry(String country) {
		this.country = country;
	}





	public String getState() {
		return state;
	}





	public void setState(String state) {
		this.state = state;
	}





	public String getTelephone() {
		return telephone;
	}





	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}





	public String getEmail() {
		return email;
	}






	public void setEmail(String email) {
		this.email = email;
	}





	public String getStudioName() {
		return studioName;
	}




	public void setStudioName(String studioName) {
		this.studioName = studioName;
	}




	public String getDanceStudioLocation() {
		return danceStudioLocation;
	}




	public void setDanceStudioLocation(String danceStudioLocation) {
		this.danceStudioLocation = danceStudioLocation;
	}




	public String getProgramName() {
		return programName;
	}




	public void setProgramName(String programName) {
		this.programName = programName;
	}




	public String getChoreographer() {
		return choreographer;
	}




	public void setChoreographer(String choreographer) {
		this.choreographer = choreographer;
	}




	public Date getProgramDate() {
		return programDate;
	}




	public void setProgramDate(Date programDate) {
		this.programDate = programDate;
	}




	public String getInstagramHandle() {
		return instagramHandle;
	}









	public void setInstagramHandle(String instagramHandle) {
		this.instagramHandle = instagramHandle;
	}





	public String getWebsite() {
		return website;
	}






	public void setWebsite(String website) {
		this.website = website;
	}






	public String getStory() {
		return story;
	}





	public void setStory(String story) {
		this.story = story;
	}






	public List<User> getUsers() {
		return users;
	}






	public void setUsers(List<User> users) {
		this.users = users;
	}



	public Date getCreatedAt() {
		return createdAt;
	}






	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}





	public Date getUpdatedAt() {
		return updatedAt;
	}





	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}





	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}
	
	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}
	
 
}
