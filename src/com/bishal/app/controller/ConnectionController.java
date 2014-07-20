package com.bishal.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bishal.app.connections.dao.ConnectionsDao;
import com.bishal.app.connections.dao.ConnectionsDaoImpl;
import com.bishal.app.model.Connection;
import com.bishal.app.model.Registration;

@Controller
public class ConnectionController {
	@Autowired
	private HttpServletRequest request;

	@RequestMapping(value = "/sendConnectRequest", method = RequestMethod.GET)
	public String sendConnectRequest(ModelMap model) {
		int id = Integer.parseInt(request.getParameter("id"));
		Registration reg = (Registration) request.getSession().getAttribute(
				"userSession");
		Connection connObject = new Connection(reg.getUserId(), id, 0);
		ConnectionsDao con = new ConnectionsDaoImpl();
		try {
			if(! con.doesConnectionAlreadyExists(connObject)){
				con.addConnection(connObject);	
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		model.addAttribute("profile",
				request.getSession().getAttribute("userSession"));
		return "sendConnectRequest";
	}

	@RequestMapping(value = "/unFriend", method = RequestMethod.GET)
	public String unFriendRequest(ModelMap model) {
		int id = Integer.parseInt(request.getParameter("id"));
		Registration reg = (Registration) request.getSession().getAttribute(
				"userSession");
		Connection connObject = new Connection(reg.getUserId(), id, 1);
		ConnectionsDao con = new ConnectionsDaoImpl();
		con.removeConnection(connObject);
		return "unFriend";
	}	
}
