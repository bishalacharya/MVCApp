package com.bishal.app.preferences.dao;

import org.hibernate.Session;

import com.bishal.app.model.PartnerPreference;
import com.bishal.app.util.HibernateUtil;

public class PreferencesDaoImpl implements PreferencesDao{

	@Override
	public PartnerPreference getPartnerPreference(int id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		PartnerPreference preference = (PartnerPreference) session.get(PartnerPreference.class,
				new Integer(id));
		return preference;
	}

}
