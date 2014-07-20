package com.bishal.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bishal.app.model.Registration;

@Controller
public class StatisticsController {
	@Autowired
	private HttpServletRequest request;
	
	@RequestMapping(value = "/statistics", method = RequestMethod.GET)
	public ModelAndView country(ModelMap model) {
		Registration reg = (Registration)request.getSession().getAttribute("userSession");
		model.addAttribute("profile", reg);
		return new ModelAndView("statistics");
	}
}
