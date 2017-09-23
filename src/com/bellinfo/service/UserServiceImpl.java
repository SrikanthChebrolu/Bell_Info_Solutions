package com.bellinfo.service;

import java.util.Date;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bellinfo.beans.Stickeynotes;
import com.bellinfo.beans.User;
import com.bellinfo.dao.Userdao;
import com.bellinfo.entities.BellinfoUser;
import com.bellinfo.entities.BellinfoUserBackgroundinformation;
import com.bellinfo.entities.BellinfoUserLogin;
import com.bellinfo.entities.UserResume;
import com.bellinfo.entities.UserRole;


@Service
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private Userdao userdao;
	
	@Override
	public void saveNewUser(User user) {
		// TODO Auto-generated method stub
		
		//user
		BellinfoUserLogin buser=new BellinfoUserLogin();
		buser.setUserUsername(user.getUsername());
		buser.setUserPassword(user.getPassword());
		buser.setUserCreatedDate(new Date());
		buser.setEnabled(Boolean.TRUE);
		
		
		//role
		UserRole us=new UserRole();		
		us.setBellinfoUserLogin(buser);
		us.setUserRoleUsername(user.getUsername());
		us.setUserRoleRole("ROLE_USER");
		us.setUserRoleCreatedDate(new Date());
		
		buser.setUserRoles(us);
		
		
		//user profile
		BellinfoUser bb=new BellinfoUser();
		bb.setBellinfoUserLogin(buser);
		
		bb.setUserEmailid(user.getEmail());
		bb.setUserFirstName(user.getFirstname());
		bb.setUserLastName(user.getLastname());
		bb.setUserEmailid(user.getEmail());
		bb.setUserPhoneNumber(user.getPhonenumber());
		bb.setUserGender(user.getGender());
		
		buser.setBellinfoUsers(bb);
		
		//background info
		BellinfoUserBackgroundinformation back=new BellinfoUserBackgroundinformation();
		back.setBellinfoUserLogin(buser);
		
		back.setUserBackgroundMastersgroup(user.getMastersgroup());
		back.setUserBackgroundUniversity(user.getUseruniv());
		back.setUserTechnology(user.getUsertechnology());
		
		buser.setBellinfoUserBackgroundinformations(back);
		
		userdao.persistUser(buser);
			
		
	}

	@Override
	public UserResume getUserResumeId(long UserResumeId) {
		// TODO Auto-generated method stub
		return userdao.getUserResumeId(UserResumeId);
	}

	@Override
	public void savestickeynotes(Stickeynotes stickeynotes) {
		// TODO Auto-generated method stub
		
	}

}
