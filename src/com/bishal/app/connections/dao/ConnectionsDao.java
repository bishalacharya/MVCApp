package com.bishal.app.connections.dao;

import com.bishal.app.model.Connection;

public interface ConnectionsDao {
	public boolean doesConnectionAlreadyExists(Connection con);
	public boolean addConnection(Connection con);
	public boolean removeConnection(Connection con);
}
