<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Management.jsp</title>
<script src="res/js/resource.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
span {
	margin: 5px;
	color: #000000;
}

#top {
	text-align: right;
	background-color: #BDBDBD;
}

#btn {
	color: #ffffff;
	height: 30px;
	border: 1px solid #000000;
	font-weight: 800;
	background-color: #000000;
	cursor: pointer;
}

#sideMenu {
	background-color: #BDBDBD;
	position: absolute;
	height: 95%;
	width: 18%;
	float: left;
}

#middle {
	color: #000000;
	position: absolute;
	top: 5%;
	left: 20%;
	font-weight: 800;
	font-size: 15pt;
}

#bottom {
	position: absolute;
	top: 96%;
	width: 98.7%;
	height: 30px;
	line-height: 30px;
	background-color: #BDBDBD;
	text-align: right;
	font-weight: 800;
}

h2 {
	font-size: 15pt;
	margin: 20px 0 20px 20px;
}

.menuContainer {
	width: 90%;
	margin: 0 auto;
}

.managements {
	margin-bottom: 13pt;
	background: #fff;
}

.menuTitle {
	padding: 5px;
	color: #fff;
	background: #333;
	cursor: pointer;
	text-align: center;
}

.items {
	padding: 0 20px 3px 20px;
	font-size: 10pt;
	text-align: center;
	}

.container {
   background-color: gray;
   background: rgba(0, 0, 0, 0.4);
   position: absolute;
   width: 100%;
   min-height: 100%;
   left: 0;
   top: 0;
   text-align:center;
}

.mdialog {border :2px solid white;
   border-radius: 25px;
   background-color: #ffffff;
   position: absolute;
   top: 50%;
   left: 50%;
   width: 60%;
   height: 450px;
   transform: translate(-50%,-50%);
}



</style>
</head>
<body onLoad="init(${objName})">
	<div id="top">
		<span>${ACCESSINFO.stName}</span> <span>${ACCESSINFO.elCode}</span> <span>최근
			접속 일시 : ${ACCESSINFO.lastAccessTime}</span> <input type="hidden"
			name="stCode" value="${ACCESSINFO.stCode},${ACCESSINFO.elCode}" /> <input
			type="submit" class="lno" value="LOGOUT"
			onClick="logout(${ACCESSINFO.stCode},${ACCESSINFO.elCode})" />

	</div>
	<div id="sideMenu">
		<div class="menuContainer">
			<h2>${ACCESSINFO.stName}</h2>
			<section class="menuContainer">
				<article class="managements Active">
					<p class="menuTitle">Daily Report</p>
				</article>

				<article class="managements">
					<p class="menuTitle" id="salesManagements">영업관리</p>
					<div class="items">
						<p>
							<span onClick="thisMonthSaleInfo('${ACCESSINFO.stCode}')">금월매출정보</span>
						</p>
						<p>상품매출정보</p>
						<p>요일매출정보</p>
						<p>회원매출정보</p>
					</div>
				</article>

				<article class="managements">
					<p class="menuTitle" id="empManagements">직원관리</p>
					<div class="items">
						<p>
							<span id="EmpList"
								onClick="getempList('ajax/EmpList', '${ACCESSINFO.stCode}','${ACCESSINFO.elCode}');">직원리스트</span>
						</p>
						<p>
							<span onClick="getEmpForm()">직원정보등록</span>
						</p>
						<p>
							<span onClick="modEmpForm('ModEmpForm','${ACCESSINFO.stCode}')">직원정보수정</span>
						</p>
					</div>
				</article>


				<article class="managements">
					<p class="menuTitle" id="memberManagements">회원관리</p>
					<div class="items">
						<p>
							<span id="MemberList"
								onClick="getmemList('ajax/MemberList', '${ACCESSINFO.stCode}')">회원리스트</span>
						</p>
						<p>
							<span onClick="getMemberForm('RegMemberForm')">회원정보등록</span>
						</p>
						<p>
							<span onClick="modSlForm()">회원정보수정</span>
						</p>
					</div>
				</article>
				<article class="managements">
					<p class="menuTitle" id="goodsManagements">상품관리</p>
					<div class="items">
						<p>
							<span id="GoodsList"
								onClick="getgoodsList('final/GoodsList','${ACCESSINFO.stCode}','${ACCESSINFO.elCode}');">상품리스트</span>
						</p>
						<p>
							<span onClick="getGoodsForm('RegGoodsForm')">상품정보등록</span>
						</p>
						<p>
							<span onClick="modGoForm()">상품정보수정</span>
						</p>
					</div>
				</article>
			</section>
		</div>
	</div>
	<div id="middle">
		<div id="list">${list }</div>
	</div>
	<form name = "dynamicFormdata">
	<div id="bottom" onClick = "openModal()">바텀</div>
	<!-- 모달 제어-->
	<div class="container" id="container">
		<div class="mdialog">
			<div class="mcontent">
				<!-- 모달헤더 -->
				<div class="mheader" id = "mheader">
					<h4 class="mtitle">Modal</h4>
				</div>
				<!-- 모달 바디 -->
				<div class="mbody" id="mbody" value="">body</div>
				<div id = "list">${list} </div>
				<!-- 모달 푸터 -->
				<div class="mfooter">
					<button type="button" class="mbtn" value = "닫기" onclick="closeModal()">닫기</button>
					<input type="button" class="mbtn" name = "modalmod" />
					<input type="file"  id = "uploadfile"class="mbtn" name = "file" value="사진등록"/>
				</div>
			</div>
		</div>
	</div>
	</form>
	
</body>
<script>

function thisMonthSaleInfo(pSeCode) {
	const action = "MSI";
	const data = "seCode=" + encodeURIComponent(pSeCode);
	getAjaxJson(action, data, "toHTMLFromMSI");
}

function toHTMLFromMSI(jsonData){

	
	
	message = '<table><tr><td>날짜</td><td>매장명</td><td>상품코드</td><td>매출액</td><td>구매원가</td><td>순이익</td></tr>';
	
	for (let index= 0; index < jsonData.length; index++){
		message += '<tr><td>'+jsonData[i].monthly+'<td>';
		message += '<tr>';
	
	}
		message += '</table>';
	 document.getElementById("ajaxData") = message;
	}
	
	



	
	


	// 메뉴에 관련 항목을 클래스 이름으로 연결
	const menuZone = document.getElementsByClassName("managements");
	const menuTitle = document.getElementsByClassName("menuTitle");
	const menuItems = document.getElementsByClassName("items");

	/* menuZone의 Tag는 표식인 <article>로써 기본 이벤트가 없으므로 
	   이벤트를 부여 : 
		 addEventListener('이벤트명', function(e){이벤트 발생 시 실행 구문});*/
	for (let titleIdx = 0; titleIdx < menuTitle.length; titleIdx++) {
		menuTitle[titleIdx].addEventListener("click", function(e) {
			for (let zoneIdx = 0; zoneIdx < menuZone.length; zoneIdx++) {
				menuZone[zoneIdx].classList.remove("Active");
			}
			e.target.parentNode.classList.add("Active");
			activateItems();
		});
	}

	/* 각 메뉴의 items가 안 보이도록 display: none 
	주메뉴의 items만 보이도록 display: block */
	function activateItems() {

		for (let itemsIdx = 0; itemsIdx < menuItems.length; itemsIdx++) {
			menuItems[itemsIdx].style.display = "none";
		}
		const activeItems = document.querySelector(".managements.Active .items");
		if (activeItems != null) {
			activeItems.style.display = "block";
		}
	}
	
	activateItems();
	
	

	/* AJAX : Asynchronous JavaScript And XML
	   1. XMLHttpRequest 객체 생성
	   2. XMLHttpRequest.onReadyStateChange 속성 사용 --> 서버와의 통신 내용 설정 ==> function
	   	  ajax.readyState : 0 - 초기화
	   	  					1 - 로딩중
	   	  					2 - 로딩완료
	   	  					3 - 서버와의 통신중
	   	  					4 - 서버로부터 데이터 전송 받음
	   	  ajax.status     : 200 - 전송 중 에러 없음
	   	  					400 - 전송 중 에러 :: 클라이언트로 보낼 페이지가 없음
	   	  					
	       5. 서버로부터 데이터를 넘겨받기 --> responseText
	   3. 생성된 XMLHttpRequest 객체의 Open()
	   4. Open 된 XMLHttpRequest 객체를 서버로 Send()
	 */
	 
	function getAjaxData(action, data) {
		let ajax = new XMLHttpRequest();

		ajax.onreadystatechange = function() {
			if (ajax.readyState == 4 && ajax.status == 200) {
				let serverData = ajax.responseText;

				if (serverData.substr(0, 1) != "<") {
					document.getElementById(serverData).click();
				} else {

				}
			}
		};

		ajax.open("post", action, true);
		ajax.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded");

		ajax.send(data);
	}

	
	// modEmpForm
	function modEmpForm(action, pSoCode) {
		const data = "soCode=" + encodeURIComponent(pSoCode);
		getAjaxData(action, data);

	}
	// modEmp
	function modEmp(pSoCode, pSlCode) {
		const slCode = document.getElementsByName("slCode")[0].value;
		const slPassword = document.getElementsByName("slPassword")[0].value;
		const slState = document.getElementsByName("slState")[0].value;

		const data = "soCode=" + encodeURIComponent(pSoCode) + "&slCode="
				+ encodeURIComponent(slCode) + "&slPassword="
				+ encodeURIComponent(slPassword) + "&slState="
				+ encodeURIComponent(slState);

		getAjaxData("ModEmp", data);

	}
	function modGoForm() {
		getAjaxData("ModGoForm", "");
	}
	function modSlForm() {
		getAjaxData("ModSlForm", "");
	}
	function modGo(pGoCode, idx) {
		const goName = document.getElementsByName("goName")[idx].value;
		const goCost = document.getElementsByName("goCost")[idx].value;
		const goPrice = document.getElementsByName("goPrice")[idx].value;
		const goStocks = document.getElementsByName("goStocks")[idx].value;
		const goDiscount = document.getElementsByName("goDiscount")[idx].value;
		const goCaCode = document.getElementsByName("goCaCode")[idx].value;
		const work = document.getElementsByName("goStCode")[idx].value;

		const data = "goCode=" + encodeURIComponent(pGoCode) + "&goName="
				+ encodeURIComponent(goName) + "&goCost="
				+ encodeURIComponent(goCost) + "&goPrice="
				+ encodeURIComponent(goPrice) + "&goStocks="
				+ encodeURIComponent(goStocks) + "&goDiscount="
				+ encodeURIComponent(goDiscount) + "&goCaCode="
				+ encodeURIComponent(goCaCode) + "&goStCode="
				+ encodeURIComponent(work);

		getAjaxData("ModGo", data);
	}
	function modSl(pCtCode, idx) {
		const ctName = document.getElementsByName("ctName")[idx].value;
		const ctNumber = document.getElementsByName("ctNumber")[idx].value;
		const ctTiCode = document.getElementsByName("ctTiCode")[idx].value;

		const data = "ctCode=" + encodeURIComponent(pCtCode) + "&ctName="
				+ encodeURIComponent(ctName) + "&ctNumber="
				+ encodeURIComponent(ctNumber) + "&ctTiCode="
				+ encodeURIComponent(ctTiCode);

		getAjaxData("ModSl", data);
	}
	function goActivate(obj, idx) {
		const goName = document.getElementsByName("goName")[idx];
		const goCost = document.getElementsByName("goCost")[idx];
		const goPrice = document.getElementsByName("goPrice")[idx];
		const goStocks = document.getElementsByName("goStocks")[idx];
		const goDiscount = document.getElementsByName("goDiscount")[idx];
		const goCaCode = document.getElementsByName("goCaCode")[idx];
		const work = document.getElementsByName("goStCode")[idx];
		const updBtn = document.getElementsByName("updBtn")[idx];

		if (obj.value == "수정") {
			obj.value = "수정취소";
			goName.readOnly = false;
			goCost.readOnly = false;
			goPrice.readOnly = false;
			goStocks.readOnly = false;
			goDiscount.readOnly = false;
			goCaCode.readOnly = false;
			work.disabled = false;
			updBtn.disabled = false;
		} else {
			obj.value = "수정";
			goName.readOnly = true;
			goCost.readOnly = true;
			goPrice.readOnly = true;
			goStocks.readOnly = true;
			goDiscount.readOnly = true;
			goCaCode.readOnly = true;
			work.disabled = true;
			updBtn.disabled = true;
		}

	}

	function ctActivate(obj, idx) {
		const ctName = document.getElementsByName("ctName")[idx];
		const ctNumber = document.getElementsByName("ctNumber")[idx];
		const ctTiCode = document.getElementsByName("ctTiCode")[idx];
		const updBtn = document.getElementsByName("updBtn")[idx];

		if (obj.value == "수정") {
			obj.value = "수정취소";
			ctName.readOnly = false;
			ctNumber.readOnly = false;
			ctTiCode.readOnly = false;
			updBtn.disabled = false;
		} else {
			obj.value = "수정";
			ctName.readOnly = true;
			ctNumber.readOnly = true;
			ctTiCode.readOnly = true;
			updBtn.disabled = true;
		}

	}
	// getMemberForm
	function getMemberForm(action, pCtCode) {
		const data = "ctCode=" + encodeURIComponent(pCtCode);
		getAjaxData(action, data);
	}
	// getGoodsForm
	function getGoodsForm(action, pGoCode) {
		const data = "goCode=" + encodeURIComponent(pGoCode);
		getAjaxData(action, data);
	}
	// regEmp
	
	// regMember
	function regMember(ctCode) {
		const ctName = document.getElementsByName("ctName")[0].value;
		const ctNumber = document.getElementsByName("ctNumber")[0].value;
		const ctTiCode = document.getElementsByName("ctTiCode")[0].value;

		const data = "ctCode=" + encodeURIComponent(ctCode) + "&ctName="
				+ encodeURIComponent(ctName) + "&ctNumber="
				+ encodeURIComponent(ctNumber) + "&ctTiCode="
				+ encodeURIComponent(ctTiCode);

		getAjaxData("RegMember", data);

	}
	// regGoods
	function regGoods(goCode) {
		const goName = document.getElementsByName("goName")[0].value;
		const goCost = document.getElementsByName("goCost")[0].value;
		const goPrice = document.getElementsByName("goPrice")[0].value;
		const goStocks = document.getElementsByName("goStocks")[0].value;
		const goDiscount = document.getElementsByName("goDiscount")[0].value;
		const goCaCode = document.getElementsByName("goCaCode")[0].value;
		const goStCode = document.getElementsByName("goStCode")[0].value;

		const data = "goCode=" + encodeURIComponent(goCode) + "&goName="
				+ encodeURIComponent(goName) + "&goCost="
				+ encodeURIComponent(goCost) + "&goPrice="
				+ encodeURIComponent(goPrice) + "&goStocks="
				+ encodeURIComponent(goStocks) + "&goDiscount="
				+ encodeURIComponent(goDiscount) + "&goCaCode="
				+ encodeURIComponent(goCaCode) + "&goStCode="
				+ encodeURIComponent(goStCode);

		getAjaxData("RegGoods", data);

	}

	function init(objName) {
		let container =  document.getElementById("container");
		container.style.display = "none";
		 if (objName != null) {
	         document.getElementById(objName).click();
			
		}
	}
</script>

</html>