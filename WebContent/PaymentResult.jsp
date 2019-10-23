<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%Cookie[] cookies=request.getCookies(); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결제 완료 창</title>
</head>
<body>
<!-- 게시 등록을 위한 자바빈즈 이용 선언 -->
<jsp:useBean id="ude" class="univ.DrinkEntity" scope="page"/>
<jsp:useBean id="udedb" class="univ.DrinkDBCP" scope="page"/>

<%
	String id=getCookieValue(cookies,"id");
	if(getCookieValue(cookies,"id")!=null){
		System.out.println("id 값은? "+id);
		udedb.deleteAll(ude);
%>
    		<script>alert("결제가 완료되었습니다. 메인화면으로 돌아가시려면 확인버튼을 눌러주세요.");
    		document.location.href="Main.jsp";
    		</script>
    		
 <%
	}else{
		udedb.deleteAll(ude);
		System.out.println("id 값은? "+id);
	}
%>
</body>
</html>
<%!
	private String getCookieValue(Cookie[] cookies, String id){
	String value=null;
	if(cookies==null)
		return null;
	for(Cookie cookie:cookies){
		if(cookie.getName().equals(id))
			return cookie.getValue();
	}
	return null;
}
%>