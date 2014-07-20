package com.bishal.app.message.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.bishal.app.model.Message;
import com.bishal.app.util.HibernateUtil;

public class MessageDaoImpl implements MessageDao{

	@Override
	public boolean sendMessage(Message msg) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		 
		session.beginTransaction();
 
		session.save(msg);
		session.getTransaction().commit();
		return true;
	}

	@Override
	public List<Message> getIncomingMessages(int userId) {
		Session session = HibernateUtil.getSessionFactory().openSession();
 
		String queryString = "from Message where receiverId = :userId ";
		Query query = session.createQuery(queryString);
		query.setParameter("userId", userId);
		
		List<Message> lst = query.list();
		session.close();
		return lst;
	}

	@Override
	public List<Message> getOutgoingMessages(int userId) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		 
		String queryString = "from Message where senderId = :userId ";
		Query query = session.createQuery(queryString);
		query.setParameter("userId", userId);
		
		List<Message> lst = query.list();
		session.close();
		return lst;
	}

	@Override
	public Message getSingleMessage(int id) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		Message msg = (Message) session.get(Message.class, new Integer(id));
		session.close();

		return msg;
	}

	@Override
	public boolean updateMsgReadStat(int id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.createQuery("UPDATE Message set isRead = :p1 WHERE id = :p2")
	    .setParameter("p1", 1)
	    .setParameter("p2", id)
	    .executeUpdate();
		
		return false;
	}
	
}
