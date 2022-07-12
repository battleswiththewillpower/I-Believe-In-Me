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
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;



@Entity
@Table(name="users")
public class User {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
    
    private int roleLevel;
	
    @NotEmpty(message="first name is required!")
    @Size(min=3, message="name must be between 3 and 30 characters")
    private String firstName;
    
    @NotEmpty(message="last name is required!")
    @Size(min=3, message="name must be between 3 and 30 characters")
    private String lastName;
    
    @NotEmpty(message="Organization is required! or put none.")
    @Size(min=3, message="organization must be between 3 and 30 characters")
    private String organization;
    
    @Size(min = 2, message = "Address is required, at least 2 characters!")
    private String address;
 
    @Size(min = 2, message = "Must be at least 2 characters!")
    private String city;
    
    @Size(min = 2, message = "Must be at least 2 characters!")
    private String state;
    
    @Size(min = 2, message = "Must be at least 2 characters!")
    private String zip;
    
    @NotEmpty(message="Email is required!")
    @Email(message="Please enter a valid email!")
    private String email;
    
    @NotEmpty(message="Password is required!")
    @Size(min=8, max=128, message="Password must be between 8 and 128 characters")
    private String password;
    
    @Transient
    @NotEmpty(message="Confirm Password is required!")
    @Size(min=8, max=128, message="Confirm Password must be between 8 and 128 characters")
    private String confirm;
    
    
    
    //Relationship
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="applicant_id")
    private Applicant applicant;
    
    
    private Date lastLogin;
    
	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	public User() {}
	
	


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










	public String getOrganization() {
		return organization;
	}










	public void setOrganization(String organization) {
		this.organization = organization;
	}










	public String getAddress() {
		return address;
	}










	public void setAddress(String address) {
		this.address = address;
	}










	public String getCity() {
		return city;
	}










	public void setCity(String city) {
		this.city = city;
	}










	public String getState() {
		return state;
	}










	public void setState(String state) {
		this.state = state;
	}










	public String getZip() {
		return zip;
	}










	public void setZip(String zip) {
		this.zip = zip;
	}










	public String getEmail() {
		return email;
	}










	public void setEmail(String email) {
		this.email = email;
	}










	public String getPassword() {
		return password;
	}










	public void setPassword(String password) {
		this.password = password;
	}










	public String getConfirm() {
		return confirm;
	}










	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}





	public Applicant getApplicant() {
		return applicant;
	}





	public void setApplicant(Applicant applicant) {
		this.applicant = applicant;
	}





	public int getRoleLevel() {
		return roleLevel;
	}




	public void setRoleLevel(int roleLevel) {
		this.roleLevel = roleLevel;
	}




	public Date getLastLogin() {
		return lastLogin;
	}




	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
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
