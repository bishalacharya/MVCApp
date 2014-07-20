package com.bishal.app.search.dao;

import java.util.List;

import com.bishal.app.model.PartnerPreference;
import com.bishal.app.model.Registration;

public interface SearchDao {
	/**
	 * Simple user Search
	 * 
	 * @param object
	 * @return
	 */
	public List<Registration> search(Registration object);

	/**
	 * Simple search to find Matches
	 * 
	 * @param object
	 * @return
	 */
	public List<Registration> searchMatches(PartnerPreference object);

	/**
	 * Advanced Search
	 * @param object
	 * @return
	 */
	public List<Registration> advancedSearch(Registration object);
	
	/**
	 * Gets a single row of a table
	 * @param id
	 * @return
	 */
	public Registration searchById(int id);
	
	/**
	 * Checks for user by email & id at login 
	 * @param email
	 * @param id
	 * @return
	 */
	public Registration searchByEmailId(String email, String password);

	/**
	 * Retrieves common friend for the user
	 * @return
	 */
	public List<Registration> searchFriends(int userId);
}
