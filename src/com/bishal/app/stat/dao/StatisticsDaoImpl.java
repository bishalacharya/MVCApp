package com.bishal.app.stat.dao;

import org.hibernate.Session;

import com.bishal.app.model.UserStatistics;
import com.bishal.app.util.HibernateUtil;

public class StatisticsDaoImpl implements StatisticsDao {

	@Override
	public boolean saveProfileHit(UserStatistics stat) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		 
		session.beginTransaction();
 
		session.save(stat);
		session.getTransaction().commit();
		return false;
	}

}
