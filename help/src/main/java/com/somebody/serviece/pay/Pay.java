package com.somebody.serviece.pay;

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
public class Pay {
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
		case "P01":
			payMg();
			 break;
		case "P02":
			onLoadPay();
			break;
		case "P03":
			searchPay();
			break;
		
	
	}
		
	}


	public void payMg() {
		
		
	}

	public void onLoadPay() {
		
		
	}

	public void searchPay() {
	
		
	}

}
