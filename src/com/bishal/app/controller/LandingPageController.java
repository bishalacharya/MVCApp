package com.bishal.app.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bishal.app.model.Registration;
import com.bishal.app.registration.dao.RegistrationDao;
import com.bishal.app.registration.dao.RegistrationDaoImpl;

@Controller
@RequestMapping("/index")
public class LandingPageController {

	@Autowired
	private HttpServletRequest request;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView country(@ModelAttribute("MVCApp") Registration reg,
			ModelMap model) {
		model.addAttribute("message", "Landing Page");
		List<String> countryList = new ArrayList<String>();
		countryList.add("USA");
		countryList.add("Nepal");
		model.addAttribute("countryList", countryList);
		model.addAttribute("country", reg.getFirstName());
		return new ModelAndView("index", "command", new Registration());
	}

	@RequestMapping(value = "/index", method = RequestMethod.POST)
	public String register(@ModelAttribute("MVCApp") Registration register,
			ModelMap model) {
		Date dob = java.sql.Date.valueOf(register.getYear() + "-"
				+ register.getMonth() + "-" + register.getDay());
		register.setDob(dob);
		
		register.setClientIpAddress(request.getRemoteAddr());
		
		RegistrationDao rd = new RegistrationDaoImpl();
		try{
		rd.register(register);
		model.addAttribute("message","Please login.");
		}catch(Exception e){
			model.addAttribute("message","The user is already registered.");
		}
		
		return "redirect:login";
	}
	
	
}
