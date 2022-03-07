package com.somebody.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.somebody.serviece.auth.Authenticaion;
import com.somebody.serviece.equimpment.Equipment;
import com.somebody.serviece.lesson.Lesson;
import com.somebody.serviece.member.Member;
import com.somebody.serviece.pay.Pay;
import com.somebody.serviece.staff.Staff;

public class ControllerBon {

	@Autowired
	Authenticaion auth;
	@Autowired
	Equipment eq;
	@Autowired
	Lesson ls;
	@Autowired
	Member me;
	@Autowired
	Pay pa;
	@Autowired
	Staff sf ;

	private static final Logger logger = LoggerFactory.getLogger(ControllerBon.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "login";
	}

	@RequestMapping(value = "/meLogin", method = RequestMethod.POST)
	public void meLogin() {
		this.auth.backController("A02");

	}

	@RequestMapping(value = "/ctLogin", method = RequestMethod.POST)
	public void ctLogin() {
		this.auth.backController("A03");
	}

	@RequestMapping(value = "/logOut", method = RequestMethod.GET)
	public void logOut() {
		this.auth.backController("A04");
	}

	@RequestMapping(value = "/sendEmailForm", method = RequestMethod.GET)
	public void sendEmailForm() {
		this.auth.backController("A05");
		

	}

	

	@RequestMapping(value = "/ctJoinForm", method = RequestMethod.GET)
	public void ctJoinForm() {
		this.auth.backController("J01");
	}

	@RequestMapping(value = "/ctJoin", method = RequestMethod.POST)
	public void ctJoin() {
		this.auth.backController("J02");
	}

	




}
