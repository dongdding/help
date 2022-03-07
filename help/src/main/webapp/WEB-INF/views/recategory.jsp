<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>두개선택</title>

<script src="res/js/resource.js"></script>
<style>
.btn{
text-align:center;
margin-top: 200px;
display:flex;
}
#btn1{
margin-left: 100px;
height: 100px;
background-color: gray;
font-size: 18pt;
width: 500px;
}
#btn2{
margin-left: 200px;
padding-left: 50px;
height: 100px;
background-color: gray;
font-size: 18pt;
width: 500px;
}
.log{
background-color: gray;	
height: 50px;
font-size: 18pt;
}
.lno{
height: 50px;
width: 200px;
}
</style>
</head>

<body onLoad="initPage()">

	<div class=log>
		<span>${ACCESSINFO.stCode}</span> <span>${ACCESSINFO.stName}</span> <span>${ACCESSINFO.elCode}</span>
		 <span>최근접속일시:${ACCESSINFO.lastAccessTime}</span>
		<!--  <form action="AccessOut" method="get">-->
		<input type="hidden" name="stCode"
			value="${ACCESSINFO.stCode},${ACCESSINFO.elCode}" /> 
			<input
			type="submit" class="lno" value="LOGOUT"
			onClick="logout(${ACCESSINFO.stCode},${ACCESSINFO.elCode})" />

	</div>
	<div class = "btn">
	<div>
	<input type="button" id="btn1" value="manegement"
			onClick="getmanagepage(${ACCESSINFO.stCode},${ACCESSINFO.elCode},'${ACCESSINFO.lvCode}')" />
	</div>
	<div>
	 <input type="button" id="btn2" value="sales"
			onClick="getsalespage(${ACCESSINFO.stCode},${ACCESSINFO.elCode},'${ACCESSINFO.lvCode}')" />
	 </div>
	 </div>




</body>
</html>