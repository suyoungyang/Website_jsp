<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
  	String id=(String)session.getAttribute("id");
  	String passwd=(String)session.getAttribute("passwd");
  	String name=(String)session.getAttribute("name");
  	String birth=(String)session.getAttribute("birth");
  	String sex=(String)session.getAttribute("sex");
  	String email=(String)session.getAttribute("email");
  	String phone=(String)session.getAttribute("phone");
  	
  	session.invalidate();
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>

</head>
<body>
	<script>alert("회원가입이 되었습니다.메인으로 가시려면 '확인'버튼을 눌러주세요.");
	document.location.href="Main.jsp";
	</script>
	
	
	
</body>
</html>