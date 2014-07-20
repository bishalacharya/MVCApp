package com.bishal.app.model;

import java.sql.Date;

public class Message {
	int id;
	int senderId;
	int receiverId;
	String subject;
	String message;
	String senderName;
	int isRead;
	Date date;
	public Message(){
		
	}
	public Message(int senderId, int receiverId, String subject,
			String message, String senderName, Date sentDate) {
		this.senderId = senderId;
		this.receiverId = receiverId;
		this.subject = subject;
		this.message = message;
		this.date = sentDate;
		this.senderName = senderName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSenderId() {
		return senderId;
	}

	public void setSenderId(int senderId) {
		this.senderId = senderId;
	}

	public int getReceiverId() {
		return receiverId;
	}

	public void setReceiverId(int receiverId) {
		this.receiverId = receiverId;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getIsRead() {
		return isRead;
	}
	public void setIsRead(int isRead) {
		this.isRead = isRead;
	}
	public String getSenderName() {
		return senderName;
	}
	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}

}
