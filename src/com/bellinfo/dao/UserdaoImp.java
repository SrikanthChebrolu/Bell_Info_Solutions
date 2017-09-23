package com.bellinfo.dao;


import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bellinfo.entities.BellinfoUserLogin;
import com.bellinfo.entities.UserResume;


@Repository
@Transactional
public class UserdaoImp implements Userdao {
	
	@Autowired
	private SessionFactory sessionfactory;
	
	@Override
	public void persistUser(BellinfoUserLogin user) {
		// TODO Auto-generated method stub
		sessionfactory.getCurrentSession().save(user);
	}

	@Override
	public UserResume getUserResumeId(long UserResumeId) {
		// TODO Auto-generated method stub

		return (UserResume) sessionfactory.getCurrentSession().get(UserResume.class, UserResumeId);
			}

}
