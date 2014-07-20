package com.bishal.app.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="connections")
public class Connection {
	int id;
	int userId;
	int id2;
	int isFriend;

	public Connection (){
		
	}
	
	public int getIsFriend() {
		return isFriend;
	}

	public void setIsFriend(int isFriend) {
		this.isFriend = isFriend;
	}

	public Connection(int userId, int id2, int isFriend) {
		this.userId = userId;
		this.id2 = id2;
		this.isFriend = isFriend;
	}

	public int getId2() {
		return id2;
	}

	public void setId2(int id2) {
		this.id2 = id2;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
