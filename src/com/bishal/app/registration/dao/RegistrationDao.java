package com.bishal.app.registration.dao;

import com.bishal.app.model.Registration;

public interface RegistrationDao {
	/**
	 * Registers a new User into database
	 * 
	 * @param register
	 * @return
	 */
	public boolean register(Registration register);

	/**
	 * Checks if the user already exists in the database
	 * @param register
	 * @return
	 */
	public boolean isUserAlreadyExists(Registration register);
}
