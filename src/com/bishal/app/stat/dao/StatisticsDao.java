package com.bishal.app.stat.dao;

import com.bishal.app.model.UserStatistics;

public interface StatisticsDao {
	/**
	 * Logs id whenever a user's profile is seen
	 * @param userId
	 * @return
	 */
	public boolean saveProfileHit(UserStatistics stat);
}
