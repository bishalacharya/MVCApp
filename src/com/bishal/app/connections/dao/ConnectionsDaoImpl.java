package com.bishal.app.connections.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.bishal.app.model.Connection;
import com.bishal.app.util.HibernateUtil;

public class ConnectionsDaoImpl implements ConnectionsDao {

	@Override
	public boolean addConnection(Connection con) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		session.beginTransaction();

		session.save(con);
		session.getTransaction().commit();

		return true;
	}

	@Override
	public boolean doesConnectionAlreadyExists(Connection con) {

		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();

		String queryString = "from Connection where userId = :userId AND id2= :id2";
		Query query = session.createQuery(queryString);
		query.setParameter("userId", con.getUserId());
		query.setParameter("id2", con.getId2());

		List<Connection> lst = query.list();

		if (lst.size() == 0) {
			return false;
		}

		return true;
	}

	@Override
	public boolean removeConnection(Connection con) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.delete(con);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
		return true;
	}

}
