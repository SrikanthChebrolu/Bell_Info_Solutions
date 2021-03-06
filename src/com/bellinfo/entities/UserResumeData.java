package com.bellinfo.entities;

// Generated Jul 31, 2015 10:14:40 PM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * UserResumeData generated by hbm2java
 */
@Entity
@Table(name = "user_resume-data", schema = "public")
public class UserResumeData implements java.io.Serializable {

	private long userResumeDataId;
	private UserResume userResume;
	private byte[] userResumeBytes;

	public UserResumeData() {
	}

	public UserResumeData(long userResumeDataId, UserResume userResume) {
		this.userResumeDataId = userResumeDataId;
		this.userResume = userResume;
	}

	public UserResumeData(long userResumeDataId, UserResume userResume,
			byte[] userResumeBytes) {
		this.userResumeDataId = userResumeDataId;
		this.userResume = userResume;
		this.userResumeBytes = userResumeBytes;
	}

	@Id
	@Column(name = "user_resume_data_id", unique = true, nullable = false)
	public long getUserResumeDataId() {
		return this.userResumeDataId;
	}

	public void setUserResumeDataId(long userResumeDataId) {
		this.userResumeDataId = userResumeDataId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_resume_id", nullable = false)
	public UserResume getUserResume() {
		return this.userResume;
	}

	public void setUserResume(UserResume userResume) {
		this.userResume = userResume;
	}

	@Column(name = "user_resume_bytes")
	public byte[] getUserResumeBytes() {
		return this.userResumeBytes;
	}

	public void setUserResumeBytes(byte[] userResumeBytes) {
		this.userResumeBytes = userResumeBytes;
	}

}
