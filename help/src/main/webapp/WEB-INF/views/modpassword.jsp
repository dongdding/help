<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page :: Static</title>
<script src="res/js/resource.js"></script>
<script>
	function modPassword(formName) {
	
	
			const elpass = document.getElementsByName("elPassword")[0];
	alert(elpass)
	
		const form = document.getElementsByName(formName)[0];
		form.appendChild(elpass);
		/* input개체에 대한 값의 유효성 체크 */
		form.submit();
	}
	
	
</script>
<link rel="stylesheet" type="text/css" href="res/css/common.css" />
<style>
body	{font-family: 'Black Han Sans', sans-serif;}
table {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 52%;
}

td {
	text-align: center;
}

input {
	width: 98%;
	height: 40px;
	text-align: center;
	font-size: 15pt;
	color: #0BC904;
	font-family: 'Black Han Sans', sans-serif;
}

#state {
	text-align: left;
	padding-left: 20px;
}

#ips {
	text-align: right;
	padding-right: 20px;
}

#btn {
	background-color: #0BC904;
	color: #FFFFFF;
	width: 99%;
	height: 60px;
	border: 1px solid #0BC904;
	cursor: pointer;
}

.title {
	height: 80px;
	font-size: 20pt;
	background-color: #0BC904;
	color: #FFFFFF;
}

.line {
	height: 60px;
}
</style>
</head>
<body onLoad="initPage('${msg}')">
	<form name="findInfo" action="modpw" method="post">
		<table>
			<tr class="title">
				<td>Mod Yours</td>
			</tr>
			<tr class="line">
				<td><input type="text" name="stCode" placeholder="storeCode" value = '${stCode}' readOnly/></td>
			</tr>
			<tr class="line">
				<td><input type="text" name="elCode" placeholder="employeeCode" value = '${elCode}' readOnly/></td>
			</tr>
			<tr class="line">
				<td><input type="password" name="elPassword" placeholder="AccessCode" /></td>
			</tr>
			<tr>
				<td>					
					<input type="button" id="btn" value="비번변경"
					onClick="modPassword('findInfo')" /></td>
			</tr>
		</table>
	</form>
</body>
</html>