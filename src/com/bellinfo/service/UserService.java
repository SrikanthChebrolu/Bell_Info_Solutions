package com.bellinfo.service;

import com.bellinfo.beans.Stickeynotes;
import com.bellinfo.beans.User;
import com.bellinfo.entities.UserResume;





public interface UserService {

	public void saveNewUser(User user);
	
	public UserResume getUserResumeId(long UserResumeId);
	
	public void savestickeynotes(Stickeynotes stickeynotes);
	
	
	
	
}
