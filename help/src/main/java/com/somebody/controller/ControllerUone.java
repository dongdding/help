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


public class ControllerUone {
	@Autowired
	Member me;
	
	@RequestMapping(value = "/insTaState", method = RequestMethod.POST)
	public void insTaState() {
		this.me.backController("P09");
	}
	@RequestMapping(value = "/meHealthMg", method = RequestMethod.POST)
	public void meHealthMg() {
		this.me.backController("P10");
	}
	@RequestMapping(value = "/meFoodMg", method = RequestMethod.POST)
	public void meFoodMg() {
		this.me.backController("P11");
	}
	@RequestMapping(value = "/meLessonMg", method = RequestMethod.POST)
	public void meLessonMg() {
		this.me.backController("P12");
	}
	@RequestMapping(value = "/getLessonList", method = RequestMethod.POST)
	public void getLessonList() {
		this.me.backController("P13");
	}
	@RequestMapping(value = "/searchLsMg", method = RequestMethod.POST)
	public void searchLsMg() {
		this.me.backController("P14");
	}
	@RequestMapping(value = "/insMeLesson", method = RequestMethod.POST)
	public void insMeLesson() {
		this.me.backController("P15");
	}
	@RequestMapping(value = "/delMeLesson", method = RequestMethod.POST)
	public void delMeLesson() {
		this.me.backController("P16");
	}
	@RequestMapping(value = "/meConfig", method = RequestMethod.POST)
	public void meConfig() {
		this.me.backController("P17");
	}
	@RequestMapping(value = "/checkMePw", method = RequestMethod.POST)
	public void checkMePw() {
		this.me.backController("P18");
	}
	@RequestMapping(value = "/modMeMg", method = RequestMethod.POST)
	public void modMeMg() {
		this.me.backController("P19");
	}
	@RequestMapping(value = "/delMe", method = RequestMethod.POST)
	public void delMe() {
		this.me.backController("P20");
	}
}
