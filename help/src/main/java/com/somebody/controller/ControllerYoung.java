package com.somebody.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.somebody.serviece.auth.Authenticaion;

import com.somebody.serviece.equimpment.Equipment;

import com.somebody.serviece.lesson.Lesson;

import com.somebody.serviece.member.Member;

import com.somebody.serviece.pay.Pay;

import com.somebody.serviece.staff.Staff;


public class ControllerYoung {
	@Autowired
	Authenticaion auth;
	@Autowired
	Lesson ls;
	@Autowired
	Equipment eq;
	@Autowired
	Pay pa;

	
	@RequestMapping(value = "/payMg", method = RequestMethod.POST)
	public void payMg() {
		this.pa.backController(("P01"));
	}
	
	@RequestMapping(value = "/psJoin", method = RequestMethod.POST)
	public void psJoin() {
		this.auth.backController(("P05"));
	}
	
	
}
