package com.bellinfo.controllers;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bellinfo.beans.JavaMail;
import com.bellinfo.beans.JavaMailNeedAProxy;
import com.bellinfo.beans.RequestAProxy;
import com.bellinfo.beans.Stickeynotes;
import com.bellinfo.beans.User;
import com.bellinfo.service.UserService;




@Controller
public class WebController {
	
	@Autowired
	private UserService userservice;
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public ModelAndView getHomePage(Principal principal){
		return new ModelAndView("home");
	}
	
	@RequestMapping(value="/landing",method=RequestMethod.GET)
	public ModelAndView getLandingPage(Principal principal){
		return new ModelAndView("landing").addObject("stickeynotes", new Stickeynotes());
	}
	
	@RequestMapping(value="/landing",method=RequestMethod.POST)
	public ModelAndView postStickeynotesPage(@ModelAttribute("stickeynotes")Stickeynotes stickeynotes){
		//JavaMail jmail = new JavaMail(stickeynotes.getEmail());
		userservice.savestickeynotes(stickeynotes);
		return new ModelAndView("landing");
	}
	
	@RequestMapping(value="/signin",method=RequestMethod.GET)
	public ModelAndView getLoginPage(Principal principal){
		return new ModelAndView("signin");
	}
	
	@RequestMapping(value="/signup",method=RequestMethod.GET)
	public ModelAndView getSignupPage(Principal principal){
		return new ModelAndView("signup").addObject("user", new User());
	}
	
	@RequestMapping(value="/signup",method=RequestMethod.POST)
	public ModelAndView postSignupPage(@ModelAttribute("user")User user){
		JavaMail jmail = new JavaMail(user.getEmail());
		userservice.saveNewUser(user);
		return new ModelAndView("signin");
	}
	
	@RequestMapping(value="/resume",method=RequestMethod.GET)
	public ModelAndView getResumePage(Principal principal){
		return new ModelAndView("resume");
	}
	
	@RequestMapping(value="/proxy",method=RequestMethod.GET)
	public ModelAndView getProxyPage(Principal principal){
		return new ModelAndView("proxy").addObject("requestaproxy", new RequestAProxy());
	}
	
	@RequestMapping(value="/proxy",method=RequestMethod.POST)
	public ModelAndView postProxyPage(@ModelAttribute("requestaproxy")RequestAProxy requestaproxy){
		System.out.println(requestaproxy);
		JavaMailNeedAProxy javamailneedaproxy = new JavaMailNeedAProxy(requestaproxy.getName(),requestaproxy.getSubject());
		System.out.println("proxy");
		return new ModelAndView("landing");
	}
	
	@RequestMapping(value="/friendsatbellinfo",method=RequestMethod.GET)
	public ModelAndView getfriendsPage(Principal principal){
		return new ModelAndView("friends");
	}
	
	@RequestMapping(value="/contact",method=RequestMethod.GET)
	public ModelAndView getContactPage(Principal principal){
		return new ModelAndView("contact");
	}
	
}
