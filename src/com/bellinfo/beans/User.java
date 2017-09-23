package com.bellinfo.beans;

import java.io.Serializable;

public class User implements Serializable{
	
	
	private String email;
	private String phonenumber;
	private String firstname;
	private String lastname;
	private Boolean gender;
	private String username;
	private String password;
	private Boolean enabled;
	
	private String useruniv;
	private String usertechnology;
	
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	private String mastersgroup;
	
	
	
	
	
	public String getUseruniv() {
		return useruniv;
	}
	public void setUseruniv(String useruniv) {
		this.useruniv = useruniv;
	}
	public String getUsertechnology() {
		return usertechnology;
	}
	public void setUsertechnology(String usertechnology) {
		this.usertechnology = usertechnology;
	}
	public String getMastersgroup() {
		return mastersgroup;
	}
	public void setMastersgroup(String mastersgroup) {
		this.mastersgroup = mastersgroup;
	}
	
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public Boolean getGender() {
		return gender;
	}
	public void setGender(Boolean gender) {
		this.gender = gender;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	

}
