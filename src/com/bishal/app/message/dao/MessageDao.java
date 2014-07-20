package com.bishal.app.message.dao;

import java.util.List;

import com.bishal.app.model.Message;

public interface MessageDao {
	public boolean sendMessage(Message msg);
	public List<Message> getIncomingMessages(int userdId);
	public List<Message> getOutgoingMessages(int userId);
	public Message getSingleMessage(int id);
	public boolean updateMsgReadStat(int id);
}
