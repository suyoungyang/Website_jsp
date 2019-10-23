<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보 수정 페이지</title>

</head>
<script language=JavaScript src="personalform.js"></script>
<body>
<%@page import="univ.*" %>
<h2 align=center>회원 정보 수정 페이지</h2>


<%
	String id=(String)session.getAttribute("id");
	PersonalDBCP piedb=new PersonalDBCP();
	PersonalInfoEntity pie=piedb.getPerson(id);
	String name=pie.getName();
	String passwd=pie.getPasswd();
	String birth=pie.getBirth();
	String sex=pie.getSex();
	String email=pie.getEmail();
	String phone=pie.getPhone();
	
	if(id!=null){
%>
<center><form name=personalform method=post action="processperson.jsp">
<!-- menu : 수정 또는 삭제를 구분을 위한 매개변수로 이용 -->

<input type=hidden name="menu" value="update">
<table>
		<tr><td>아이디</td><td><font color="blue"><input type=hidden name="id" value="<%=id %>"><%=id%></font></td></tr>
		<tr><td>비밀번호</td><td><input type=password name=passwd value="<%=passwd %>" maxlength=20></td></tr>
		<tr><td>이름</td><td><input type=text name=name value="<%=name%>" maxlength=20></td></tr>
		<tr><td>생년월일</td><td><input type=text name=birth value="<%=birth %>" maxlength=8>(8자리 입력)</td></tr>
		<tr><td>성별</td><td><select name="sex"><option selected value="<%=sex="man"%>">남자</option><option value="<%=sex="woman"%>">여자</option></select></td></tr>
		<tr><td>이메일(선택)</td><td><input type=text name=email value="<%=email%>" maxlength="30"></td></tr>
		<tr><td>휴대전화</td><td><input type=text name=phone value="<%=phone%>" maxlength=20></td></tr>
		<tr align=center><td colspan="2">	
		<input type=button value="정보수정" onClick="updatecheck()">
		<input type=button value="회원탈퇴" onClick="deletecheck()">
		<input type=reset	value="취소">
		</td></tr>
</table>
</form></center>
<%
	}else{
%>
		<script>alert("로그인이 필요한 페이지 입니다.");document.location.href="Main.jsp";</script>
<%
	}	
%>
</body>
</html>