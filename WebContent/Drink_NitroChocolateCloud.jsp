<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>나이트로 쇼콜라 클라우드</title>
<!-- 초기화 -->
	<style>
		*{margin:0; padding:0;}
		body{font-family:'굴림',serif;}
		li{list-style:none;}
		a{text-decoration:none;}
		img{border:0;}
	</style>
<!-- return -->
<style>
	#return{
		background-color:black;
		color:white;
		
		width:960px; height:20px;border:0;
		margin:0 auto;
		
	}
	a:link{color:white;}
	a:active {color:white;}
	a:visited {color:white;}
</style>

<!-- header -->
<style>
	#main_gnb{
		/*중앙 정렬*/
		width:960px;
		margin:0 auto;
		right:0;
	
		/*절대 좌표*/
		height:50px;
		position:relative;
		

	}
	#main_gnb>ul{overflow:hidden;}
	#main_gnb>ul>li{float:left;}
	#main_gnb>ul>li>a{
		display:block;
		padding:2px 10px;
		border:0;
		color:black;
	}
	#main_gnb>ul>li>a:hover{
		background:white;
		color:black;
	}
</style>

<!-- cotent -->
<style>

	#content{
		/*중앙 정렬*/
		width:960px;	margin:0 auto;
		
		/*절대 좌표*/
		height:800px;
		position:relative;
		image-width:150px;
	}
	#content>table_style{
		/*중앙 정렬*/
		width:960px;	margin:0 auto;
		
		/*절대 좌표*/
		height:600px;
		position:relative;
	
		width:960px;
		align:center;
	}
	
	.button{height:30px; width:30px;font-size:1.5em;}
	.text_big{font-size:2em;}
	.alert{text-align:center; font-size:13px; color:gray;}
	.table_button{height:30px; width: 100px; }
	
</style>
<!-- content -->

<style>
	#main_footer{
		width:960px; margin:0 auto;
		margin-bottom:10px;
		
		text-align: left;
	}
	.footer-text{text-align:center;}
	h3{height:30px;}
</style>


</head>
<!-- 파일Drinkform.js : 폼의 각 입력값이 있는지를 검토하는 함수 구현 -->
<script language=JavaScript src="Drinkform.js"></script>

<body>
	<%@page import="univ.*" %>
	<%
		request.setCharacterEncoding("UTF-8");
		String name="";
		int price;
		int num;
		String cup="";
		String size="";
		String coffee="";
		String syrup="";
		String milk="";
		String topping="";
		String lid="";
	%>
<!-- return -->
<div id="return">
	<a href="http://localhost:8090/WebEx06/Drink.jsp">← 이전화면</a>
</div>

<!-- header -->
<nav id="main_gnb">
		<ul>
			<li><a href="http://localhost:8090/JSPWebEx04/SignPage.jsp">Sign In</a></li>
			<li><a href="#">My Starbucks</a></li>
			<li><a href="#">Customer Service & Ideas</a></li>
			<li><a href="http://localhost:8090/JSPWebEx04/listboard.jsp">장바구니</a></li>
		</ul>
</nav>


<!-- content -->
<center><form name=drinkform method="post" action="processdrink.jsp">
<!-- 메뉴 : 등록을 위한 매개변수로 이용 -->
<input type=hidden name="menu" value="insert">
	<div id="content">
		<Table id="table_style">
			<tr>
				<td rowspan="4" align="center" width="480px"><img src="image/음료/나이트로 쇼콜라클라우드.PNG" alt="나이트로 쇼콜라 클라우드"></td>
				<td class="text_big" align="center"><input type="hidden" name="name" value="<%=name="나이트로 쇼콜라클라우드" %>">나이트로 쇼콜라 클라우드</td>
			</tr>
			<tr><td align="center">Nitro Chocolate Cloud</td></tr>
			<tr><td align="center"><input type="hidden" name="price" value="<%=price=6100 %>">6,100 원</td></tr>
			<tr><td align="center"><select name="num"><option  selected value="<%=num=1%>">1</option><option name="num" value="<%=num=2%>">2</option><option name="num" value="<%=num=3%>">3</option><option name="num" value="<%=num=4%>">4</option><option name="num" value="<%=num=5%>">5</option></select>잔</td></tr>
		</Table>
		<Table>
			<tr height="80px"><td class="alert" align="center" colspan="2" width="960px">픽업대로 오시면 음료를 제조해드립니다.<br>매장 찾기에서 나이트로 콜드 브루 판매매장을 확인해보세요.<br>
			디카페인 에스프레소 샷 선택이 불가한 음료입니다.<br></td></tr>
			<tr height="30px"><td align="center">컵 선택</td><td align="center"><select name="cup" style="width:150px;height:30px;"><option selected value="<%=cup="머그컵" %>">머그컵</option>
			<option value="<%=cup="개인컵"%>">개인컵</option><option  value="<%=cup="일회용컵" %>"></option></select></td></tr>
			<tr height="30px"><td align="center">사이즈</td><td align="center"><select  name="size"  style="width:150px; height:30px;"><option selected value="<%=size="tall"%>">Tall</option><option value="<%=size="small"%>">Small</option><option value="<%=size="grande"%>">Grande</option></select></td></tr>
			<tr height="30px"><td align="center" colspan="2"><b>< 퍼스널옵션 ></b></td></tr>
			<tr height="30px"><td align="center">커피(0  원)</td><td align="center"><select name="coffee" style="width:150px; height:30px;"><option selected value="<%=coffee="드립커피"%>">드립 커피</option></select></td></tr>
			<tr height="30px"><td align="center">시럽(0  원)</td><td align="center"><select name="syrup" style="width:150px; height:30px;"><option  selected value="<%=coffee="쇼콜라시럽1"%>">쇼콜라 시럽 1</option><option value="<%=coffee="쇼콜라시럽2"%>">쇼콜라 시럽 2</option><option value="<%=coffee="쇼콜라시럽3"%>">쇼콜라 시럽 3</option><option  value="<%=coffee="쇼콜라시럽4"%>">쇼콜라 시럽 4</option><option value="<%=coffee="쇼콜라시럽5"%>">쇼콜라 시럽 5</option></select></td></tr>
			<tr height="30px"><td align="center">우유(0  원)</td><td align="center"><select name="milk" style="width:150px; height:30px;"><option selected value="<%=coffee="하프앤하프"%>">하프앤하프</option></select></td></tr>
			<tr height="30px"><td align="center">토핑(0  원)</td><td align="center"><select name="topping" style="width:150px; height:30px;"><option selected value="<%=coffee="쇼콜라토핑제거"%>">쇼콜라 토핑 없기</option><option value="<%=coffee="쇼콜라토핑적게"%>">쇼코랄 토핑 적게</option><option value="<%=coffee="쇼콜라토핑보통"%>">쇼콜라 토핑 보통</option></select></td></tr>
			<tr height="30px"><td align="center">컵&리드 옵션(0 원)</td><td align="center"><select name="lid" style="width:150px; height:30px;"><option selected value="<%=coffee="리드"%>">리드</option><option value="<%=coffee="리드덮어서제공"%>">리드 덮어서 제공</option></select>
			<tr height="50px"><td align="center" colspan="2">
			<input type="submit" name="basket" class="table_button" value="담기" onClick="drinkcheck()"></td></tr>
		</Table>
	</div>

</form></center>
<!-- content -->
<footer id="main_footer">
	<div>
		<h3>함께하면 좋은 메뉴</h3>
		<table>.
			<tr><td><img src="image/푸드/베이커리-다크초콜릿 칩머핀.PNG" width="150px" height="150px"></td><td><img src="image/푸드/베이커리-제주감귤머핀.PNG"width="150px" height="150px"></td>
			<td><img src="image/푸드/과일&요거트-밀크 푸딩.PNG" width="150px" height="150px"></td><td><img src="image/푸드/과일&요거트-리얼후르츠-사과.PNG" width="150px" height="150px"></td>
			<td><img src="image/푸드/베이커리-고소한 치즈 베이글.PNG" width="150px" height="150px"></td><td><img src="image/푸드/샌드위치&샐러드-치킨에그샐러드포미.PNG" width="150px" height="150px"></td>
			</tr>
			<tr height="40px"><td class="footer-text" width="130px">다크 초콜릿 칩 머핀</td><td class="footer-text"  width="130px" height="20px">제주감귤머핀</td><td class="footer-text"  width="130px" height="20px">밀크 푸딩</td><td class="footer-text"  width="130px" height="20px">리얼후르츠-사과</td>
			<td class="footer-text"  width="130px" height="20px">고소한 치즈 베이글</td><td class="footer-text"  width="130px" height="20px">치킨에그샐러드포미</td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
		</table>
	</div>
	<div>
		<h3>비슷한 다른 메뉴</h3>
		<table>
			<tr><td><img src="image/음료/나이트로 쇼콜라.PNG" width="150px" height="150px"></td><td><a href="http://localhost:8090/JSPWebEx04/Drink_NitroColdBrew.jsp"><img src="image/음료/나이트로 콜드브루.PNG" width="150px" height="150px"></a></td>
			<td><img src="image/음료/돌체콜드브루.PNG" width="150px" height="150px"></td><td><img src="image/음료/바닐라크림 콜드브루.PNG" width="150px" height="150px"></td>
			<td><img src="image/음료/브루드커피-아이스커피.PNG" width="150px" height="150px"></td><td><img src="image/음료/브루드커피-오늘의 커피.PNG" width="150px" height="150px"></td>
			</tr>
			<tr height="40px"><td class="footer-text"  width="130px" height="20px">나이트로 쇼콜라</td><td class="footer-text"  width="130px" height="20px">나이트로 콜드브루</td><td class="footer-text" width="130px" height="20px">돌체 콜드브루</td><td class="footer-text" width="130px" height="20px">바닐라 크림<br>콜드브루</td>
			<td class="footer-text" width="130px" height="20px">아이스커피</td><td class="footer-text" width="130px" height="20px">오늘의 커피</td>
			</tr>
		</table>
	
	</div>
</footer>

</body>
</html>