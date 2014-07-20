package com.bishal.app.search.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.bishal.app.model.PartnerPreference;
import com.bishal.app.model.Registration;
import com.bishal.app.util.HibernateUtil;
import com.bishal.app.util.Misc;

public class SearchDaoImpl implements SearchDao {

	@Override
	public List<Registration> search(Registration object) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		String queryString = "from Registration where country = :country AND religion= :religion AND sex = :sex AND age between :from AND :to";
		Query query = session.createQuery(queryString);
		query.setParameter("country", object.getCountry());

		query.setParameter("religion", object.getReligion());
		query.setParameter("sex", object.getSex());
		query.setParameter("from", object.getFrom());
		query.setParameter("to", object.getTo());

		List<Registration> lst = query.list();
		session.close();
		return lst;
	}

	@Override
	public Registration searchById(int id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Registration reg = (Registration) session.get(Registration.class,
				new Integer(id));
		return reg;
	}

	@Override
	public Registration searchByEmailId(String email, String password) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		String queryString = "from Registration where email = :email AND password= :password";
		Query query = session.createQuery(queryString);

		query.setParameter("email", email);
		query.setParameter("password", password);

		List<Registration> lst = query.list();

		if (lst.size() == 1) {
			return lst.get(0);
		}

		return null;
	}

	// change the query to find appropriate matches for the user
	@Override
	public List<Registration> searchMatches(PartnerPreference pref) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		String queryString = "from Registration where ";

		if (pref.getSex() != null) {
			queryString = queryString + "SEX = :sex ";
		}
		queryString = queryString + "AND age BETWEEN :age1 AND :age2 ";

		if (pref.getCountry() != null) {
			queryString = queryString + "AND country = :country ";
		}
		if (pref.getReligion() != null) {
			queryString = queryString + "AND religion = :religion ";
		}
		if (pref.getLanguage() != null) {
			queryString = queryString + "AND language = :language ";
		}
		if (pref.getComplexion() != null) {
			queryString = queryString + "AND complexion = :complexion ";
		}
		if (pref.getOccupation() != null) {
			queryString = queryString + "AND occupation = :occupation ";
		}
		if (pref.getDiet() != null) {
			queryString = queryString + "AND diet = :diet ";
		}

		Query query = session.createQuery(queryString);

		query.setParameter("age1", pref.getAge1());
		query.setParameter("age2", pref.getAge2());

		if (pref.getSex() != null) {
			query.setParameter("sex", pref.getSex());
		}
		if (pref.getCountry() != null) {
			query.setParameter("country", pref.getCountry());
		}
		if (pref.getReligion() != null) {
			query.setParameter("religion", pref.getReligion());
		}
		if (pref.getLanguage() != null) {
			query.setParameter("language", pref.getLanguage());
		}
		if (pref.getComplexion() != null) {
			query.setParameter("complexion", pref.getComplexion());
		}
		if (pref.getOccupation() != null) {
			query.setParameter("occupation", pref.getOccupation());
		}
		if (pref.getDiet() != null) {
			query.setParameter("diet", pref.getDiet());
		}

		query.setFirstResult(Misc.startRows);
		query.setMaxResults(Misc.maxRows);

		List<Registration> lst = query.list();
		session.close();
		return lst;
	}

	@Override
	public List<Registration> advancedSearch(Registration object) {
		return null;
	}

	@Override
	public List<Registration> searchFriends(int userId) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		Query query1 = session.createQuery("select c.id2 from Connection c where c.userId = :userId");
		query1.setParameter("userId", userId);
		
		Query query2 = session.createQuery("from Registration r where r.userId in (:ids)").setParameterList("ids", query1.list());
		List<Registration> lst = query2.list();
		
		return lst;
	}

}
