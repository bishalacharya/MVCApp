package com.bishal.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value = "/messageBoard", method = RequestMethod.GET)
	public ModelAndView country(ModelMap model) {
		
		return new ModelAndView("messageBoard");
	}

	@RequestMapping(value = "/messageBoard", method = RequestMethod.POST)
	public ModelAndView postMessage(ModelMap model) {
		return new ModelAndView("messageBoard");
	}
	
}
