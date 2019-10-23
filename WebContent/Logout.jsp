<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content=text/html; charset=UTF-8">
<title>로그아웃 페이지</title>
</head>
<body>
<script>alert("로그아웃 하시겠습니까? '확인'버튼을 눌러주세요.");
<%
session.invalidate();
System.out.println("정상 로그아웃 되었습니다.");
%>
	document.location.href="Main.jsp";
	</script>
</body>
</html>