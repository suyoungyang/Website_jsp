<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
 <% Cookie[] cookies=request.getCookies();  %>

<body>
<%
	String agree1=request.getParameter("agree1");
	String agree2=request.getParameter("agree2");
	String agree3=request.getParameter("agree3");
	String result=null;
	
	if(agree1==null||agree2==null){
		%>
		<script>alert("필수 항목에 동의해 주세요.");history.go(-1);</script>
		<%
	}else{
		response.sendRedirect("PersonalInfo.jsp");
	}

%>
</body>