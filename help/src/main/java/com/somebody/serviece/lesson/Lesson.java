package com.somebody.serviece.lesson;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.web.servlet.ModelAndView;

import com.somebody.db.MapperBon;

import kr.co.icia.plzec.services.Encryption;
import kr.co.icia.plzec.services.ProjectUtils;

@Service
public class Lesson {
	@Autowired 
	private MapperBon om;
	private ModelAndView mav;
	@Autowired
	private ProjectUtils pu;
	@Autowired
	private Encryption enc;
	@Autowired
	private DataSourceTransactionManager tx;

	private TransactionStatus txStatus;

	private DefaultTransactionDefinition txdef;

	String page = null;

	public void backController(String sCode) {
		String gs = null;
		String senddata = null;

		switch (sCode) {
		case "L01":
			lessonMg();
			 break;
		case "L02":
			searchLesson();
			break;
		case "L03":
			getLsCaList();
			break;
		case "L04":
			insLsPay();
			break;
		case "L05":
			getMaxLesson();
			break;
		case "L06":
			insLesson();
			break;
		case "L07":
			modLesson();
			break;
		case "L08":
			lsMemDetail();
			break;
		case "L09":
			modLsSuccess();
			break;
		case "L10":
			delLesson();
			break;
		}
		
	}
	public void lessonMg() {
		
		
	}

	public void searchLesson() {
		
		
	}

	public void getLsCaList() {
	
		
	}

	public void insLsPay() {
		
		
	}

	public void getMaxLesson() {
		
		
	}

	public void insLesson() {
	
		
	}

	public void modLesson() {
	
		
	}

	public void lsMemDetail() {
		
		
	}
	public void modLsSuccess() {
		
		
	}
	public void delLesson() {
	
		
	}
}
