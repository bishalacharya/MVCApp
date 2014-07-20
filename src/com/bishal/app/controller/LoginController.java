package com.bishal.app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.bishal.app.model.Registration;
import com.bishal.app.model.User;
import com.bishal.app.search.dao.SearchDao;
import com.bishal.app.search.dao.SearchDaoImpl;

@Controller
@SessionAttributes
public class LoginController {
	@Autowired
	private HttpServletRequest request;

	@RequestMapping(value = "/login")
	public ModelAndView login() {
		return new ModelAndView("login", "command", new User());
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String initForm(@ModelAttribute("User") User usr, ModelMap model) {
		SearchDao sd = new SearchDaoImpl();
		
		Registration loginStatus = sd.searchByEmailId(usr.getEmail(),
				usr.getPassword());
		if (loginStatus != null) {
			request.getSession().setAttribute("loggedIn", true);
			request.getSession().setAttribute("userName",
					loginStatus.getFirstName());
			request.getSession().setAttribute("userSession", loginStatus);
			return "redirect:welcome?id=" + loginStatus.getUserId();
		}
		return "redirect:memberNotFound";
	}

	@RequestMapping(value = "/memberNotFound")
	public ModelAndView memberNotFound() {
		return new ModelAndView("memberNotFound");
	}

	@RequestMapping(value = "/welcome")
	public ModelAndView welcome(ModelMap model) {
		model.addAttribute("profile",
				request.getSession().getAttribute("userSession"));
		List<String> frensList = new ArrayList<String>();
		SearchDao sd = new SearchDaoImpl();
		Registration reg  = (Registration)request.getSession()
				.getAttribute("userSession"); 
		List<Registration> frens = sd.searchFriends(reg.getUserId());
		for(Registration rg : frens){
			frensList.add(rg.getFirstName());
		}
		ObjectMapper mapper = new ObjectMapper();
		
		String json = "";
		try {
			json = mapper.writeValueAsString(frensList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("friends",json);
		return new ModelAndView("welcome");
	}
	
}
