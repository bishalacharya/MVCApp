package com.bishal.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bishal.app.model.PartnerPreference;
import com.bishal.app.model.Registration;
import com.bishal.app.preferences.dao.PreferencesDao;
import com.bishal.app.preferences.dao.PreferencesDaoImpl;
import com.bishal.app.search.dao.SearchDao;
import com.bishal.app.search.dao.SearchDaoImpl;
import com.bishal.app.util.Countries;

@Controller

public class SearchController {
	@Autowired
	private HttpServletRequest request;
	
	@RequestMapping(value = "/search")
	public ModelAndView search(ModelMap model) {
		Countries.getInstance();
		model.addAttribute("countryList", Countries.getCountryList());
		model.addAttribute("religionList", Countries.getReligion());
		model.addAttribute("ageList", Countries.getAgeList());
		return new ModelAndView("search", "command", new Registration());
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public ModelAndView search(@ModelAttribute("register") Registration search,
			ModelMap model) {
		SearchDao rd = new SearchDaoImpl();
		List<Registration> regList = rd.search(search);
		model.addAttribute("countryList", Countries.getCountryList());
		model.addAttribute("religionList", Countries.getReligion());
		model.addAttribute("ageList", Countries.getAgeList());
		model.addAttribute("regList",regList);
		return new ModelAndView("search", "command", new Registration());
	}
	
	@RequestMapping(value = "/myMatches")
	public ModelAndView searchMyMatches(ModelMap model) {
		model.addAttribute("profile",
				request.getSession().getAttribute("userSession"));
		// get registration info after getting session info
		Registration reg = (Registration) request.getSession().getAttribute("userSession");
		// get preferences for current user
		PreferencesDao pref = new PreferencesDaoImpl();
		PartnerPreference pPref = pref.getPartnerPreference(reg.getUserId());

		System.out.println(pPref+":"+pPref.getAge1()+":");	
		SearchDao sd = new SearchDaoImpl();
		List<Registration> regList = sd.searchMatches(pPref);
		
		model.addAttribute("regList",regList);
		return new ModelAndView("myMatches");
	}
	
}
