<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.ArrayList,univ.PersonalInfoEntity,univ.PersonalDBCP" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 등록 처리 </title>
</head>
<body>

	<!-- 회원 정보 저장을 위한 자바빈즈 이용 선언 -->
	<jsp:useBean id="pie" class="univ.PersonalInfoEntity" scope="page" />
	<jsp:useBean id="piedb" class="univ.PersonalDBCP" scope="page" />

<%
	//한글 처리를 위해 문자 인코딩 지정
	request.setCharacterEncoding("UTF-8");
	String menu=request.getParameter("menu");
	//등록 모듈
	if(menu.equals("delete")){
		String id=request.getParameter("id");
		String passwd=request.getParameter("passwd");
		if(!piedb.isPasswd(id,passwd)){
		%>
		<!-- 암호가 틀리면 이전 화면으로 이동 -->
		<script>alert("비밀번호가 다릅니다.");history.go(-1);</script>
		<%
		}else{
			//삭제를 위해 데이터베이스 자바빈즈에 구현 된 메소드 deleteDB()를 실행
			piedb.deleteDB(id);
			session.invalidate();
			response.sendRedirect("Main.jsp");
		}
	}
	else if(menu.equals("insert")||menu.equals("update")){
		if(menu.equals("insert")){
		%>
		<!-- 등록시 BoardEntity에 지정해야 하는 필드 id -->
		<jsp:setProperty name="pie" property="id"/>
		<jsp:setProperty name="pie" property="passwd"/>
		<jsp:setProperty name="pie" property="name"/>
		<jsp:setProperty name="pie" property="birth"/>
		<jsp:setProperty name="pie" property="sex"/>
		<jsp:setProperty name="pie" property="email"/>
		<jsp:setProperty name="pie" property="phone"/>
		<%
		//등록을 위해 데이터베이스 자바빈즈에 구현된 메소드 insertDB()실행
		piedb.insertDB(pie);
		//기능 수행 후 동의 화면으로 이동
		%>
		<script>alert("회원가입이 되었습니다.메인으로 가시려면 '확인'버튼을 눌러주세요.");
		document.location.href="Main.jsp";
		</script>
		<%
		}else if(menu.equals("update")){
			String id=request.getParameter("id");
			String passwd=request.getParameter("passwd");
			%>
			<!-- 수정 시 PersonalInfoEntity에 지정해야 하는 필드 id -->
			<jsp:setProperty name="pie" property="id"/>
			<jsp:setProperty name="pie" property="passwd"/>
			<jsp:setProperty name="pie" property="name"/>
			<jsp:setProperty name="pie" property="birth"/>
			<jsp:setProperty name="pie" property="sex"/>
			<jsp:setProperty name="pie" property="email"/>
			<jsp:setProperty name="pie" property="phone"/>
			<%
			//수정을 위해 데이터베이스 자바빈즈에 구현 된 메소드 updateDB()실행
			piedb.updateDB(pie);
		%>
		<script>alert("정보가 수정 되었습니다.");document.location.href="Main.jsp";</script>
		<% 
		}
		
	}
	
%>
</body>
</html>