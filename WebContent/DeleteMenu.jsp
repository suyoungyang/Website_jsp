<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴삭제 페이지</title>
</head>
<body>
<!-- 게시 등록을 위한 자바빈즈 이용 선언 -->
<jsp:useBean id="ude" class="univ.DrinkEntity" scope="page"/>
<jsp:useBean id="udedb" class="univ.DrinkDBCP" scope="page"/>

<%
	//한글처리를 위한 문자인코딩 지정
	request.setCharacterEncoding("UTF-8");
	String i=request.getParameter("id");
	System.out.println(i);
	int id=Integer.parseInt(i);
	//삭제를 위해 데이터베이스 자바빈즈에 구현된 메소드 deleteDB()를 실행
	System.out.println(id);
	udedb.deleteDB(id);
	%>
	<script>alert("삭제 되었습니다.");</script>
	<%
	response.sendRedirect("listboard.jsp");
	%>
	
</body>
</html>