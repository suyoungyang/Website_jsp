<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>스타벅스에 오신 것을 환영합니다.</title>
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
</head>
<body>
<%

	Cookie cookie=new Cookie("id","");
	cookie.setMaxAge(-1);
	response.addCookie(cookie);
	if(session.getAttribute("id")!=null){	
 		String id=(String)session.getAttribute("id");
 		String passwd=(String)session.getAttribute("passwd");
		response.addCookie(new Cookie("id",id));
		response.addCookie(new Cookie("passwd",passwd));
	}else{
		response.addCookie(new Cookie("id","customer"));
		response.addCookie(new Cookie("passwd",null));
	}
	
	
%>
<header id="main_header">
	<div id="title">
		<a href="http://localhost:8090/JSPWebEx046/Main.jsp"><img src="image/logo.png" class="img" width="200px"height="auto"/></a>
	</div>
	<nav id="main_gnb">
		<ul>
			<li><a href="http://localhost:8090/JSPWebEx04/SignPage.jsp">Sign In</a></li>
			<li><a href="http://localhost:8090/JSPWebEx04/Mystarbucks.jsp">My Starbucks</a></li>
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
<div id="content">
	<table>
		<tr><td><img src="image/newmain.PNG" class="img" width="100%"></td></tr>
		<tr><td><img src="image/advertising1.PNG" class="img" width="100%"></td></tr>
		<tr><td><img src="image/advertising2.PNG" class="img" width="100%"></td></tr>
		<tr><td><img src="image/advertising4.PNG" class="img" width="100%"></td></tr>
	</table>
</div>

</body>
</html>