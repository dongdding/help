package com.somebody.serviece.member;

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
public class Member {
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
		//관리자페이지 접근
		case "M01":
			meMg();
		case "M02":
			searchMeMg();
		case "M03":
			meDetail();
		case "M04":
			getCaList();
		case "M05":
			addMember();
		case "M06":
			modMe();
		case "M08":
			insInbody();
			break;

			
			//회원페이지 접근
		case "P06":
			infoLine();
			break;
		case "P07":
			meDtInfo();
			break;
		case "P08":
			meInbodyMg();
			break;
		case "P09":
			insTaState();
			break;
		case "P10":
			meHealthMg();
			break;
		case "P11":
			meFoodMg();
			break;
		case "P12":
			meLessonMg();
			break;
		case "P13":
			getLessonList();
			break;
		case "P14":
			searchLsMg();
			break;
		case "P15":
			insMeLesson();
			break;
		case "P16":
			delMeLesson();
			break;
		case "P17":
			meConfig();
			break;
		case "P18":
			checkMePw();
			break;
		case "P19":
			modMeMg();
			break;
		case "P20":
			delMe();
			break;

		}
	}

	public void meInbodyMg() {

	}

	public void meDtInfo() {

	}

	public void meMg() {

	}

	public void searchMeMg() {

	}

	public void meDetail() {

	}

	public void getCaList() {

	}

	public void addMember() {

	}

	public void modMe() {

	}

	public void insInbody() {

	}

	public void insTaState() {

	}

	public void meHealthMg() {

	}

	public void meFoodMg() {

	}

	public void meLessonMg() {

	}

	public void getLessonList() {

	}

	public void searchLsMg() {

	}

	public void insMeLesson() {

	}

	public void delMeLesson() {

	}

	public void meConfig() {

	}

	public void checkMePw() {

	}

	public void modMeMg() {

	}

	public void delMe() {

	}

	public void infoLine() {

	}
}
