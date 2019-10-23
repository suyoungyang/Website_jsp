<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<!-- 파일  personalform.js : 폼의 각 입력 값이 있는지를 검토하는 함수 구현-->
<script language=JavaScript src="personalform.js"></script>
<body>

<%@page import="univ.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String id="";
	String passwd="";
	String name="";
	String birth="";
	String sex="";
	String email="";
	String phone="";
%>
<h2 align=center>개인정보를 입력하세요.</h2>
	<center><form name=personalform method=post action="processperson.jsp">
	<!-- menu:등록 매개변수 이용 -->
	<input type=hidden name="menu" value="insert">
	<table border=1 cellspacing=0 cellpadding=7>
		<tr><td>아이디</td><td><input type=text name=id value="<%=id%>" maxlength="20"></td></tr>
		<tr><td>비밀번호</td><td><input type=password name=passwd value="<%=passwd %>" maxlength=20></td></tr>
		<tr><td>이름</td><td><input type=text name=name value="<%=name%>" maxlength=20></td></tr>
		<tr><td>생년월일</td><td><input type=text name=birth value="<%=birth %>" maxlength=8>(8자리 입력)</td></tr>
		<tr><td>성별</td><td><select name="sex"><option selected value="<%=sex="man"%>">남자</option><option value="<%=sex="woman"%>">여자</option></select></td></tr>
		<tr><td>이메일(선택)</td><td><input type=text name=email value="<%=email%>" maxlength="20"></td></tr>
		<tr><td>휴대전화</td><td><input type=text name=phone value="<%=phone%>" maxlength=20></td></tr>
		<tr align=center><td colspan="2">	
		<input type="button" value="저장" onClick="insertcheck()">
		<input type="reset" value="다시쓰기"></td></tr>
	</table>
	</form>
	</center>
</body>
</html>