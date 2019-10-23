<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%Cookie[] cookies=request.getCookies(); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴 주문 목록 표시</title>
</head>
<!-- 초기화 -->
<style>
	*{margin:0; padding:0;}
	a{text-decoration:none;}
	img{border:0;}
	li{list-style:none;}
</style>
<!-- header -->
<style>
	#main_header{
		/*중앙 정렬*/
		width:960px;
		margin:0 auto;
		
		/*절대 좌표*/
		height:160px;
		position:relative;
	}
	#main_header>#title{
		position:absolute;
		left:20px; top:30px;
	}
	#main_header>#main_gnb{
		position:absolute;
		right:0; top:10px;
	}
	#main_header>#main_lnb{
		position:absolute;
		right:0; bottom:10px;
	}
</style>
<!-- 메뉴(1) -->
<style>
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
<!-- 메뉴(2) -->
<style>
	#main_lnb>ul{overflow:hidden;}
	#main_lnb>ul>li{float:left;}
	#main_lnb>ul>li>a{
		display:block;
		padding :8px 15px;
		border:0;
		color:black;
	}
	#main_lnb>ul>li>a:hover{
		background:white;
		color:black;
	}
</style>
<body>

<header id="main_header">
	<div id="title">
		<a href="http://localhost:8090/JSPWebEx04/Main.jsp"><img src="image/logo.png" class="img" width="200px"height="auto"/></a>
	</div>
	<nav id="main_gnb">
		<ul>
			<li><a href="http://localhost:8090/JSPWebEx04/SignPage.jsp">Sign In</a></li>
			<li><a href="#">My Starbucks</a></li>
			<li><a href="#">Customer Service & Ideas</a></li>
			<li><a href="http://localhost:8090/JSPWebEx04/listboard.jsp">장바구니</a></li>
		</ul>
	</nav>
	<nav id="main_lnb">
		<ul>
			<li><a href="#">COFFEE</a>
			<li><a href="http://localhost:8090/JSPWebEx04/Menu.html">MENU</a>
			<li><a href="#">STORE</a>
			<li><a href="#">RESPONSIBILITY</a>
			<li><a href="#">MY STARBUCKS REWARDS</a>
			<li><a href="#">WHAT'S NEW</a>
		</ul>
	</nav>
</header>
<h2 align="center">주문 담기 목록</h2>

<center>
 <hr width=70%>	
	<%@page import="java.util.ArrayList, univ.DrinkEntity" %>
	<jsp:useBean id="udedb" class="univ.DrinkDBCP" scope="page"/>
	<%
	//게시목록을 위한 배열리스트를 자바빈즈를 이용하여 확보
	ArrayList<DrinkEntity>list=udedb.getDrinkList();
	int counter=list.size();
	int row=0;
	
	if(counter>0){
	%>
	<table width=1200 border=0 cellpadding=1 cellspacing=3>
		<tr>
			<th><font color=blue><b>번호</b></font></th>
			<th><font color=blue><b>제품명</b></font></th>
			<th><font color=blue><b>가격</b></font></th>
			<th><font color=blue><b>수량</b></font></th>
			<th><font color=blue><b>컵종류</b></font></th>
			<th><font color=blue><b>사이즈</b></font></th>
			<th><font color=blue><b>(커스텀)커피</b></font></th>
			<th><font color=blue><b>(커스텀)시럽</b></font></th>
			<th><font color=blue><b>(커스텀)우유</b></font></th>
			<th><font color=blue><b>(커스텀)토핑</b></font></th>
			<th><font color=blue><b>(커스텀)리드</b></font></th>
		</tr>
		<%
			for(DrinkEntity ude:list){
				//홀짝으로 다르게 색상 지정
				String color="papayawhip";
				if(++row%2==0)color="white";
		%>
		<tr bgcolor=<%=color %>
			onmouseover="this.style.backgroundColor='SkyBlue'"
			onmouseout="this.style.backgroundColor='<%=color %>'">
			<td align=center><a href="DeleteMenu.jsp?id=<%=ude.getI()%>"><%=ude.getI() %></td>
			<td align=center><%=ude.getName() %></td>
			<td align=center><%=ude.getPrice() %></td>
			<td align=center><%=ude.getNum() %></td>
			<td align=center><%=ude.getCup() %></td>
			<td align=center><%=ude.getSize() %></td>
			<td align=center><%=ude.getCoffee() %></td>
			<td align=center><%=ude.getSyrup() %></td>
			<td align=center><%=ude.getMilk() %></td>
			<td align=center><%=ude.getTopping() %></td>
			<td align=center><%=ude.getLid() %></td>
			</tr>
			<%
			}
			 %>
		<tr><td colspan="11" align=center><font color="gray">메뉴를 삭제하시려면 번호를 눌러주세요.</font></td></tr>
		
	 </table>
	 <%
	}
	 %>
	 <hr width=70%>
	 <p>담기 한 메뉴 는 총 <%=counter %>개 입니다.</p>
	<input type="submit" value="결제" onClick="location='PaymentResult.jsp'" align="center"   >
	 
</center>

</body>
</html>
<%!
	private String getCookieValue(Cookie[] cookies, String id){
	String value=null;
	if(cookies==null)
		return null;
	for(Cookie cookie:cookies){
		if(cookie.getName().equals(id))
			return cookie.getValue();
	}
	return null;
}
%>