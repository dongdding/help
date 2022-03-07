package com.somebody.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.somebody.db.MapperBon;
import com.somebody.db.MapperDong;
import com.somebody.db.MapperUone;
import com.somebody.db.MapperYoung;
import com.somebody.serviece.auth.Authenticaion;
import com.somebody.serviece.equimpment.Equipment;
import com.somebody.serviece.lesson.Lesson;
import com.somebody.serviece.member.Member;
import com.somebody.serviece.pay.Pay;
import com.somebody.serviece.staff.Staff;

import beans.Center;


@RestController
@RequestMapping(value ="/ajax",produces = "application/json;charset=UTF-8")
//에이작스일 경우 여기서 작업
public class AjaxController {
	@Autowired
	Authenticaion auth;
	@Autowired
	Member me;
	@Autowired
	Staff sf;
	@Autowired
	Lesson ls;
	@Autowired
	Equipment eq;
	@Autowired
	Pay pa;
	

	@RequestMapping(value = "/modPw", method = RequestMethod.POST)
	public void modPw() {
		this.auth.backController("A06");
	}
	@RequestMapping(value = "/meMg", method = RequestMethod.POST)
	public void meMg() {
		this.me.backController("M01");
	}

	@RequestMapping(value = "/searchMeMg", method = RequestMethod.POST)
	public void searchMeMg() {
		this.me.backController("M02");
	}

	@RequestMapping(value = "/meDetail", method = RequestMethod.POST)
	public void meDetail() {
		this.me.backController("M03");
	}

	@RequestMapping(value = "/getCaList", method = RequestMethod.POST)
	public void getCaList() {
		this.me.backController("M04");
	}

	@RequestMapping(value = "/addMember", method = RequestMethod.POST)
	public void addMember() {
		this.me.backController("M05");
	}

	@RequestMapping(value = "/modMe", method = RequestMethod.POST)
	public void modMe() {
		this.me.backController("M06");
		
	}

	@RequestMapping(value = "/insInbody", method = RequestMethod.POST)
	public void insInbody() {
		this.me.backController("M07");
	}
	
	
	
	
	
	//Dong
	@RequestMapping(value = "/sfMg", method = RequestMethod.POST)
	public void sfMg() {
		this.sf.backController("S01");
	
	}
	@RequestMapping(value = "/searchSfMg", method = RequestMethod.POST)
	public void searchSfMg() {
		this.sf.backController("S02");
	
	}
	@RequestMapping(value = "/getMaxSf", method = RequestMethod.POST)
	public void getMaxSf() {
		this.sf.backController("S03");
	}
	@RequestMapping(value = "/insSf", method = RequestMethod.POST)
	public void insSf() {
		this.sf.backController("S04");
	}
	@RequestMapping(value = "/modSf", method = RequestMethod.POST)
	public void modSf() {
		this.sf.backController("S06");
	}
	@RequestMapping(value = "/getMeMg", method = RequestMethod.POST)
	public void getMeMg() {
		this.sf.backController("S08");
	}
	@RequestMapping(value = "/lessonMg", method = RequestMethod.POST)
	public void lessonMg() {
		this.ls.backController("L01");
	}
	@RequestMapping(value = "/searchLesson", method = RequestMethod.POST)
	public void searchLesson() {
		this.ls.backController("L02");
	}
	@RequestMapping(value = "/getLsCaList", method = RequestMethod.POST)
	public void getLsCaList() {
		this.ls.backController("L03");
	}
	@RequestMapping(value = "/insLsPay", method = RequestMethod.POST)
	public void insLsPay() {
		this.ls.backController("L04");
	}
	@RequestMapping(value = "/getMaxLesson", method = RequestMethod.POST)
	public void getMaxLesson() {
		this.ls.backController("L05");
	}
	@RequestMapping(value = "/insLesson", method = RequestMethod.POST)
	public void insLesson() {
		this.ls.backController("L06");
	}
	@RequestMapping(value = "/modLesson", method = RequestMethod.POST)
	public void modLesson() {
		this.ls.backController("L07");
	}
	@RequestMapping(value = "/lsMemDetail", method = RequestMethod.POST)
	public void lsMemDetail() {
		this.ls.backController("L08");
	}
	
	
	
	
	
	//YOUNG
	@RequestMapping(value = "/modLsSuccess", method = RequestMethod.POST)
	public void modLsSuccess() {
		this.ls.modLsSuccess();
	}
	@RequestMapping(value = "/delLesson", method = RequestMethod.POST)
	public void delLesson() {
		this.ls.delLesson();
	}
	@RequestMapping(value = "/goodsMg", method = RequestMethod.POST)
	public void goodsMg() {
		this.eq.goodsMg();
	}
	@RequestMapping(value = "/searchGoods", method = RequestMethod.POST)
	public void searchGoods() {
		this.eq.searchGoods();
	}
	@RequestMapping(value = "/getGoodsCode", method = RequestMethod.POST)
	public void getGoodsCode() {
		this.eq.getGoodsCode();
	}
	@RequestMapping(value = "/insGoods", method = RequestMethod.POST)
	public void insGoods() {
		this.eq.insGoods();
	}
	@RequestMapping(value = "/modGoods", method = RequestMethod.POST)
	public void modGoods() {
		this.eq.modGoods();
	}
	@RequestMapping(value = "/onLoadPay", method = RequestMethod.POST)
	public void onLoadPay() {
		this.pa.onLoadPay();
	}

	@RequestMapping(value = "/searchPay", method = RequestMethod.POST)
	public void searchPay() {
		this.pa.searchPay();
	}
	@RequestMapping(value = "/getSelectCenter", method = RequestMethod.POST)
	public void getSelectCenter() {
		this.auth.getSelectCenter();
	}
	
	@RequestMapping(value = "/infoLine", method = RequestMethod.POST)
	public void infoLine() {
		this.me.infoLine();
	}
	@RequestMapping(value = "/meDtInfo", method = RequestMethod.POST)
	public void meDtInfo() {
		this.me.meDtInfo();
	}
	@RequestMapping(value = "/meInbodyMg", method = RequestMethod.POST)
	public void meInbodyMg() {
		this.me.meInbodyMg();
	}
	
	
}
