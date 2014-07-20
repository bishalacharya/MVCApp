package com.bishal.app.registration.dao;

import org.hibernate.Session;

import com.bishal.app.model.Registration;
import com.bishal.app.util.HibernateUtil;

public class RegistrationDaoImpl implements RegistrationDao {

	@Override
	public boolean register(Registration register) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		 
		session.beginTransaction();
 
		session.save(register);
		session.getTransaction().commit();
		return true;
	}

	@Override
	public boolean isUserAlreadyExists(Registration register) {
		
		return false;
	}

}
