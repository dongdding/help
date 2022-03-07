package com.somebody.serviece.staff;

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
public class Staff {
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
		case "S01":
			sfMg();
			 break;
		case "S02":
			searchSfMg();
			break;
		case "S03":
			getMaxSf();
			break;
		case "S04":
			insSf();
			break;
		case "S06":
			modSf();
			break;
		case "S08":
			getMeMg();
			break;
		
		}
		
	}

	public void sfMg() {
		
		
	}

	public void searchSfMg() {
		
		
	}

	public void getMaxSf() {
		
		
	}

	public void insSf() {
		
		
	}

	public void modSf() {
		
		
	}

	public void getMeMg() {
		
		
	}

}
