package com.somebody.serviece.auth;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.web.servlet.ModelAndView;

import com.somebody.db.MapperYoung;

import kr.co.icia.plzec.services.Encryption;
import kr.co.icia.plzec.services.ProjectUtils;

@Service
public class Authenticaion {
	@Autowired
	Authenticaion auth;
	@Autowired
	private MapperYoung om;
	private ModelAndView mav;
	@Autowired
	private ProjectUtils pu;
	@Autowired
	private Encryption enc;
	@Autowired
	HttpSession session;
	@Autowired
	JavaMailSenderImpl javaMail;
	@Autowired
	private DataSourceTransactionManager tx;

	private TransactionStatus txStatus;

	private DefaultTransactionDefinition txdef;
	String page = null;
	boolean tran = false;

	public void backController(String sCode) {
		String gs = null;
		String senddata = null;

		switch (sCode) {
		case "A02":
			meLogin();
			break;
		case "A03":
			ctLogin();
			break;
		case "A04":
			logOut();
			break;
		case "A05":
			sendEmailForm();
			break;
		case "A06":
			modPw();
			break;
		case "J01":
			ctJoinForm();
			break;
		case "J02":
			ctJoin();

		case "P05":
			psJoin();
			break;
		case "P04":
			getSelectCenter();
			break;
		}

	}

	public void meLogin() {

	}

	public void ctLogin() {

	}

	public void logOut() {

	}

	public void sendEmailForm() {

	}

	public void modPw() {

	}

	public void ctJoinForm() {

	}

	public void ctJoin() {

	}

	public void psJoin() {

	}

	public void getSelectCenter() {

	}

}
