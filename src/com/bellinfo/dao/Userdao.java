package com.bellinfo.dao;


import com.bellinfo.entities.BellinfoUserLogin;
import com.bellinfo.entities.UserResume;

public interface Userdao {
	
	public void persistUser(BellinfoUserLogin user);
	
	public UserResume getUserResumeId(long UserResumeId);

}
