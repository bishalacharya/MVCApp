package com.bishal.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bishal.app.connections.dao.ConnectionsDao;
import com.bishal.app.connections.dao.ConnectionsDaoImpl;
import com.bishal.app.model.Connection;
import com.bishal.app.model.Registration;
import com.bishal.app.model.UserStatistics;
import com.bishal.app.search.dao.SearchDao;
import com.bishal.app.search.dao.SearchDaoImpl;
import com.bishal.app.stat.dao.StatisticsDao;
import com.bishal.app.stat.dao.StatisticsDaoImpl;
import com.bishal.app.util.Misc;
import com.bishal.app.util.NumericUtil;

@Controller

public class MemberProfile {

	@Autowired
	private HttpServletRequest request;

	@RequestMapping(value = "/memberProfile", method = RequestMethod.GET)
	public ModelAndView viewProfile(ModelMap model) {
		
		String id = request.getParameter("id");
		
		if(! NumericUtil.isNumeric(request.getParameter("id"))){
			return new ModelAndView("error", "command", new Registration());
		}
		
		SearchDao sd = new SearchDaoImpl();
		Registration reg = sd.searchById(Integer.parseInt(id));
		
		
		StatisticsDao statDao = new StatisticsDaoImpl();
		UserStatistics stat = new UserStatistics();

		// check whether the member is friend or NOT to enable disable friend request
		if(request.getSession().getAttribute("loggedIn") != null){
			Registration userReg = (Registration) request.getSession().getAttribute("userSession");
			Connection connObject = new Connection(userReg.getUserId(), Integer.parseInt(id), 0);
			ConnectionsDao conDao = new ConnectionsDaoImpl();
			model.addAttribute("sendConnRequest", conDao.doesConnectionAlreadyExists(connObject));
			stat.setUserId(userReg.getUserId());
		}else{
			model.addAttribute("sendConnRequest", false);
		}
		
		stat.setOthersId(Integer.parseInt(id));
		stat.setIpAddress(request.getRemoteAddr());
		stat.setDate(Misc.getCurrentDate());
		// insert id for gathering statistics. yet to be done
		statDao.saveProfileHit(stat);
		
		model.addAttribute("profile",reg);
		return new ModelAndView("memberProfile", "command", new Registration());		
		
	}


	@RequestMapping(value = "/editProfile", method = RequestMethod.GET)
	public String editProfile(ModelMap model) {
		return "editProfile";
		
	}		
}
