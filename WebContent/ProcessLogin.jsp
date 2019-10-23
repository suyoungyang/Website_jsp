<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" Content="text/html; charset=UTF-8">
<title>로그인을 처리하는 페이지</title>
</head>
<body>
<!-- 자바빈즈 이용 선언 --> 
<jsp:useBean id="pie" class="univ.PersonalInfoEntity" scope="page"/>
<jsp:useBean id="piedb" class="univ.PersonalDBCP" scope="page"/>

	 <%
	 	//한글 처리를 위해 문자 인코딩 지정
	 	request.setCharacterEncoding("UTF-8");
	 
    	String id=request.getParameter("id");
    	String passwd=request.getParameter("passwd");
    	if(!piedb.isPasswd(id,passwd)){
    %>
    	<!-- 암호가 틀리면 이전 화면 으로 이동 -->
    	<script>alert("비밀번호가 다릅니다.");history.go(-1);</script>
    <%
    	}else{
    		session.setAttribute("id",id);
    		session.setAttribute("passwd",passwd);
    %>
		<script>alert("로그인 되었습니다.");document.location.href="Main.jsp";</script>
	<%
    	}
	%>
</body>
</html>
