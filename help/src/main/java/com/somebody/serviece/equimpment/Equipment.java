package com.somebody.serviece.equimpment;

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
public class Equipment {
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
		case "G01":
			goodsMg();
			 break;
		case "G02":
			searchGoods();
			break;
		case "G03":
			getGoodsCode();
			break;
		case "G04":
			insGoods();
			break;
		case "G06":
			modGoods();
			break;
		
		}
		
	}

	public void goodsMg() {
		
		
	}

	public void searchGoods() {
		
	}

	public void getGoodsCode() {
	
		
	}

	public void insGoods() {
	
	}

	public void modGoods() {
	
	}
}
