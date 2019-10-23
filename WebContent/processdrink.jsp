<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>음료 담기 저장 페이지</title>
</head>
<body>
<!-- 게시 등록을 위한 자바빈즈 이용 선언 -->
<jsp:useBean id="ude" class="univ.DrinkEntity" scope="page"/>
<jsp:useBean id="udedb" class="univ.DrinkDBCP" scope="page"/>

<%
	//한글처리를 위한 문자인코딩 지정
		request.setCharacterEncoding("UTF-8");
		String menu=request.getParameter("menu");
	//등록모듈
	if(menu.equals("insert")){
%>
	<!-- 등록시 DrinkEntity에 저장해야 하는 필드 -->
	<jsp:setProperty name="ude" property="name"/>
	<jsp:setProperty name="ude" property="price"/>
	<jsp:setProperty name="ude" property="num"/>
	<jsp:setProperty name="ude" property="cup"/>
	<jsp:setProperty name="ude" property="size"/>
	<jsp:setProperty name="ude" property="coffee"/>
	<jsp:setProperty name="ude" property="syrup"/>
	<jsp:setProperty name="ude" property="milk"/>
	<jsp:setProperty name="ude" property="topping"/>
	<jsp:setProperty name="ude" property="lid"/>
	<%
	//등록을 위해 데이터베이스 자바빈즈에 구현된 메소드 inserDB()실행
	udedb.insertDB(ude);
	
	%>
	<script>alert("음료가 담겨 졌습니다.");history.go(-1);</script>
	<% 	}else{}
		
		
	%>

	

</body>
</html>