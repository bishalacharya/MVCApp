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

import com.bishal.app.message.dao.MessageDao;
import com.bishal.app.message.dao.MessageDaoImpl;
import com.bishal.app.model.Message;
import com.bishal.app.model.Registration;
import com.bishal.app.util.Misc;

@Controller
public class MessageController {
	@Autowired
	private HttpServletRequest request;
	
	@RequestMapping(value = "/messages", method = RequestMethod.GET)
	public ModelAndView country(ModelMap model) {
		Registration regSes =  (Registration) request.getSession().getAttribute("userSession");
    	
    	MessageDao msgDao = new MessageDaoImpl();
    	List<Message> inboxMsg =  msgDao.getIncomingMessages(regSes.getUserId());
    	model.addAttribute("inbox", inboxMsg);
    	model.addAttribute("inboxCount", inboxMsg.size());
    	
    	List<Message> outboxMsg = msgDao.getOutgoingMessages(regSes.getUserId());
    	model.addAttribute("outbox", outboxMsg);
    	model.addAttribute("outboxCount", outboxMsg.size());
    	
    	return new ModelAndView("messages");
	}

	@RequestMapping(value = "/readMessage", method = RequestMethod.GET)
	public ModelAndView readmessage(ModelMap model){
		int id = Integer.parseInt(request.getParameter("id"));
		MessageDao msgDao = new MessageDaoImpl();
		model.addAttribute("message", msgDao.getSingleMessage(id));
		// update message status to read
		msgDao.updateMsgReadStat(id);
		return new ModelAndView("readMessage","command", new Message());
	}
	
	@RequestMapping(value = "/readMessage", method = RequestMethod.POST)
	public ModelAndView replyMessage(@ModelAttribute("MVCApp") Message msg,
			ModelMap model) {
		Registration regSess =  (Registration) request.getSession().getAttribute("userSession");
		MessageDao msgDao = new MessageDaoImpl();
		Message sendMsg = new Message(regSess.getUserId(),
				msg.getSenderId(), "Re :" +msg.getSubject(), msg.getMessage(), regSess.getFirstName(),
				Misc.getCurrentDate());
		msgDao.sendMessage(sendMsg);
		return new ModelAndView("sendMessageSuccess","command", new Message());
	}
	
	@RequestMapping(value = "/sendMessage", method = RequestMethod.GET)
	public ModelAndView sendMessage() {
		request.getSession().setAttribute("toId", request.getParameter("id"));
		return new ModelAndView("sendMessage", "command", new Message());
	}
	
	@RequestMapping(value = "/sendMessageSuccess")
	public String sendMessageSuccess() {
		return "sendMessageSuccess";
	}
	
    @RequestMapping(value = "/sendMessage", method = RequestMethod.POST)
    public String sendMessage(@ModelAttribute("Message")
                            Message msg, ModelMap model) {
    	Registration regSess =  (Registration) request.getSession().getAttribute("userSession");
    	
    	// Insert into database
    	MessageDao msgDao = new MessageDaoImpl();
		Message sendMsg = new Message(regSess.getUserId(),
				Integer.parseInt((String) request.getSession().getAttribute(
						"toId")), msg.getSubject(), msg.getMessage(), regSess.getFirstName(),
				Misc.getCurrentDate());
		msgDao.sendMessage(sendMsg);
    	return "redirect:sendMessageSuccess";
    }
	
}
