<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
<style>
	a{font-size:12px; color:black; text-decoration:none;}
</style>
</head>
<body>
<% 
	String id=(String)session.getAttribute("id");
	 
	 	if(id!=null){
	 		response.sendRedirect("Logout.jsp");
	 	}else{%>
<center>
<form method=get action="ProcessLogin.jsp">
<table align=center border=0 cellpadding=1 cellspacing=3>
	<tr><td colspan="2" align=center>로그인</td></tr>
	<tr><td align=center>아이디</td><td><input type=text name=id></td></tr>
	<tr><td align=center>비밀번호</td><td><input type=passwd 	name=passwd></td></tr>
	<tr><td colspan="2" align=center><input type=submit value="로그인" ></td></tr>
	<tr><td colspan="2" align=center><a href="http://localhost:8090/JSPWebEx04/Agreement.jsp">회원가입</a>&nbsp; &nbsp;<a href="#">아이디찾기</a>&nbsp; &nbsp;
	<a href="#">비밀번호찾기</a></td></tr>		
</table>
</form>
</center>
<%
	 	}
%>

</body>
</html>
