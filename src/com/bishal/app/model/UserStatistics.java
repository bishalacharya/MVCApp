package com.bishal.app.model;

import java.sql.Date;

public class UserStatistics {
	private int id;
	private int userId;
	private int othersId;
	private String ipAddress;
	private String country;
	private Date date;
	
	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public UserStatistics(int ownId, int othersId, String ipAddress) {
		this.userId = ownId;
		this.othersId = othersId;
		this.ipAddress = ipAddress;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getOthersId() {
		return othersId;
	}

	public void setOthersId(int othersId) {
		this.othersId = othersId;
	}
	
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public UserStatistics() {

	}
}
