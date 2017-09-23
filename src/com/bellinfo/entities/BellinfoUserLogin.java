package com.bellinfo.entities;

// Generated Jul 31, 2015 10:14:40 PM by Hibernate Tools 4.3.1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * BellinfoUserLogin generated by hbm2java
 */
@Entity
@Table(name = "bellinfo_user_login", schema = "public")
//@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class BellinfoUserLogin implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7359303909689201506L;
	private Long userId;
	private String userUsername;
	private String userPassword;
	private Date userCreatedDate;
	private Boolean enabled;
	
	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	private Set<AdminProxy> adminProxies = new HashSet<AdminProxy>(0);
	private Set<ProxyAvailability> proxyAvailabilities = new HashSet<ProxyAvailability>(
			0);
	private Set<AdminAddFaculty> adminAddFaculties = new HashSet<AdminAddFaculty>(
			0);
	/*private Set<BellinfoUserBackgroundinformation> bellinfoUserBackgroundinformations = new HashSet<BellinfoUserBackgroundinformation>(
			0);*/
	private Set<UserResume> userResumes = new HashSet<UserResume>(0);
	private Set<BellinfoUserStickynotes> bellinfoUserStickynoteses = new HashSet<BellinfoUserStickynotes>(
			0);
	private UserRole userRoles;
	private BellinfoUser bellinfoUsers;
	private BellinfoUserBackgroundinformation bellinfoUserBackgroundinformations;
	/*private Set<UserRole> userRoles = new HashSet<UserRole>(0);*/
	/*private Set<BellinfoUser> bellinfoUsers = new HashSet<BellinfoUser>(0);*/

	public BellinfoUserLogin() {
	}

//	public BellinfoUserLogin(long userId) {
//		this.userId = userId;
//	}


	@Id
	@Column(name = "user_id", unique = true, nullable = false)
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long getUserId() {
		return this.userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	@Column(name = "user_username", length = 100)
	public String getUserUsername() {
		return this.userUsername;
	}

	public void setUserUsername(String userUsername) {
		this.userUsername = userUsername;
	}

	@Column(name = "user_password", length = 3000)
	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "user_created_date", length = 29)
	public Date getUserCreatedDate() {
		return this.userCreatedDate;
	}

	public void setUserCreatedDate(Date userCreatedDate) {
		this.userCreatedDate = userCreatedDate;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "bellinfoUserLogin")
	public Set<AdminProxy> getAdminProxies() {
		return this.adminProxies;
	}

	public void setAdminProxies(Set<AdminProxy> adminProxies) {
		this.adminProxies = adminProxies;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "bellinfoUserLogin")
	public Set<ProxyAvailability> getProxyAvailabilities() {
		return this.proxyAvailabilities;
	}

	public void setProxyAvailabilities(
			Set<ProxyAvailability> proxyAvailabilities) {
		this.proxyAvailabilities = proxyAvailabilities;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "bellinfoUserLogin")
	public Set<AdminAddFaculty> getAdminAddFaculties() {
		return this.adminAddFaculties;
	}

	public void setAdminAddFaculties(Set<AdminAddFaculty> adminAddFaculties) {
		this.adminAddFaculties = adminAddFaculties;
	}

	/*@OneToMany(fetch = FetchType.LAZY, mappedBy = "bellinfoUserLogin")
	public Set<BellinfoUserBackgroundinformation> getBellinfoUserBackgroundinformations() {
		return this.bellinfoUserBackgroundinformations;
	}

	public void setBellinfoUserBackgroundinformations(
			Set<BellinfoUserBackgroundinformation> bellinfoUserBackgroundinformations) {
		this.bellinfoUserBackgroundinformations = bellinfoUserBackgroundinformations;
	}*/
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "bellinfoUserLogin",cascade=CascadeType.ALL)
	@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
	public BellinfoUserBackgroundinformation getBellinfoUserBackgroundinformations() {
		return bellinfoUserBackgroundinformations;
	}

	public void setBellinfoUserBackgroundinformations(
			BellinfoUserBackgroundinformation bellinfoUserBackgroundinformations) {
		this.bellinfoUserBackgroundinformations = bellinfoUserBackgroundinformations;
	}


	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "bellinfoUserLogin",cascade=CascadeType.ALL)
	public Set<UserResume> getUserResumes() {
		return this.userResumes;
	}

	
	public void setUserResumes(Set<UserResume> userResumes) {
		this.userResumes = userResumes;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "bellinfoUserLogin",cascade=CascadeType.ALL)
	public Set<BellinfoUserStickynotes> getBellinfoUserStickynoteses() {
		return this.bellinfoUserStickynoteses;
	}

	public void setBellinfoUserStickynoteses(
			Set<BellinfoUserStickynotes> bellinfoUserStickynoteses) {
		this.bellinfoUserStickynoteses = bellinfoUserStickynoteses;
	}

	/*@OneToMany(fetch = FetchType.LAZY, mappedBy = "bellinfoUserLogin")
	public Set<UserRole> getUserRoles() {
		return this.userRoles;
	}

	public void setUserRoles(Set<UserRole> userRoles) {
		this.userRoles = userRoles;
	}*/
	
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "bellinfoUserLogin",cascade=CascadeType.ALL)
	@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
	public UserRole getUserRoles() {
		return userRoles;
	}

	public void setUserRoles(UserRole userRoles) {
		this.userRoles = userRoles;
	}

	

	/*@OneToMany(fetch = FetchType.LAZY, mappedBy = "bellinfoUserLogin")
	public Set<BellinfoUser> getBellinfoUsers() {
		return this.bellinfoUsers;
	}

	
	public void setBellinfoUsers(Set<BellinfoUser> bellinfoUsers) {
		this.bellinfoUsers = bellinfoUsers;
	}*/
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "bellinfoUserLogin",cascade=CascadeType.ALL)
	@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
	public BellinfoUser getBellinfoUsers() {
		return bellinfoUsers;
	}

	public void setBellinfoUsers(BellinfoUser bellinfoUsers) {
		this.bellinfoUsers = bellinfoUsers;
	}

}
