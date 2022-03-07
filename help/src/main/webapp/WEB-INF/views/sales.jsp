<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYpE html>
<html>
<head>
<meta charset="UTF-8">
<title>sales.jsp</title>
<script src="res/js/sales.js"></script>
<link rel="stylesheet" href="res/css/sales.css">
</head>
<body  >
	<div id="wrap">
		<div id="top">
			<span>${ACCESSINFO.stName}</span> <span>${ACCESSINFO.elCode}</span>
			<span>최근 접속 일시 : ${ACCESSINFO.lastAccessTime}</span> 
			<span>
			<input
				type="button" class="btn" value="로그아웃"
				onClick="accessOut('${ACCESSINFO.stCode}', '${ACCESSINFO.elCode}')" /></span>
		</div>
		</div>
		<table>
			<tr class="a2">
				<td class="a4"><input class="a4input" type="button" value="+1"
					onClick="modQty(1,'list')" /></td>
				<td class="a4"><input class="a4input" type="button" value="DEL" 
					onClick ="delRecord('list')"/></td>
				<td class="a4"><input class="a4input" type="button" value="-1"
					onClick="modQty(-1,'list')" /></td>
			</tr>
			<tr class="a1"  >
				<td style="width: 5%" class="border">No.</td>
				<td style="width: 50%" class="border">상품명</td>
				<td style="width: 8%" class="border">수량</td>
				<td style="width: 20%" class="border">단가</td>
				<td style="width: 15%" class="border">금액</td>
				<td style="width: 15%" class="border">할인</td>
			</tr>
			<tr class="a1" id="b1">
				<td id="list" class="border" style="width: 1000px">${list}</td>
			</tr>
			<tr id = "all" class="a1">
				<td>
				<span >합계</span>
				</td>
				<td>
				<span id ="allq"  >총수량</span>
				<span name="sum" id = "allq2"  ></span>
				</td>
				<td>
				<span id ="allp" >총금액</span>
				<span name="sum" id = "allp2" ></span>
				</td><td>
				<span id ="alld" >할인액</span>
				<span name="sum" id = "alld2"></span>
				</td>

			</tr>

			<tr class="a3">
				<td><input type="text" name = "goodsCode"  id = "bacode"  placeholder="상품코드입력" />
				 <input type= "button" id="a2" value="검색" onClick="goodsInfoCtl()"/>
				 </td>
			</tr>
		</table>
		<article>
			<div>
				<p class="p1">주문금액</p>
				<p class="p2" name="sum"></p>
			</div>
			<div>
				<p class="p1">할인금액</p>
				<p class="p2" name="sum"></p>
			</div>
			<div>
				<p class="p1">받을 금액</p>
				<p class="p2" name="sum"></p>
			</div>
			<div>
			<p>고객 코드 입력</p>
				<input class="p1" id="q3" name = "ctCode"/>
			</div>
			<div class="d1">
				<input class="p1" id="q2" type="button" value="결제" onClick="payments()" /> <input
					class="p1" id="q1" type="button" value="취소" onClick="cancel()" />
			</div>
				<div id = "buttom">바텀</div>
		</article>
	
</body>
</html>