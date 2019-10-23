<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<!-- 파일 personalform.js : 폼의 각 입력값이 있늕지를 검토하는 함수 구현 -->
<script language=JavaScript src="subscribe.jsp"></script>
<body>

	<h1 align=center>회원가입</h1>
	<center><form action=subscribe.jsp method=post>
	<table border=1>
		<tr>
			<td><h3>홈페이지 이용약관 동의 (필수)</h3></td><td><input type=radio name=agree1 value="true">동의함</td></tr>
			<tr><td width="400px" height="200px" colspan="2">
			<div>
				<h3>스타벅스 커피 코리아는 고객님을 보호합니다.</h3>
				(주)스타벅스 커피 코리아의 서비스의 이용과 관련하여 필요한 사항을 규정합니다.
				<h3>제1장 총칙</h3>
				<h5>1.목적</h5>
					1.(주)스타벅스 커피 코리아(이하 '회사'라고 칭함)에서 운영하는 사이트는 아래와 같은 약관에 동의하는 이용자들에게 제공되는 인터넷 서비스로 이용자와 회사의 권리 및 의무를 규정함을 목적으로 합니다.
			</div>
			</td></tr>
			<tr><td><h3>개인정보 수집 및 이용동의 (필수)</h3></td><td><input type=radio name=agree2 value="true">동의함</td></tr>
			<tr><td width="400px" height="200px" colspan="2">
			<div>
				본인은 (주)스타벅스 코리아(이하 '회사'라고 합니다)가 제공하는 회원 서비스 (이하 '서비스'라합니다)를
				이용하기 위해, 다음과같이'회사가 본인의 개인정보를 수집/이용하고, 개인정보의 취급을 위탁하는 것에 동의합니다.
				<b>*귀하께서는 개인정보 수집/이용/취급위탁에 대한 동의를 거부하실 수 있으나, 동의를 거부하실 경우회원가입, 
				서비스 이용등을 하실 수 없습니다.</b>
			</div>
			</td></tr>
			<tr><td><h3>E-mail 및 SMS광고성 정보 수신동의(선택)</h3></td><td><input type=radio name=agree3 value="true">동의함</td></tr>
			<tr><td colspan="2">다양한 프로모션 소식 및 신규매장 정보를 보내드립니다.</td></tr>
			<tr><td colspan="2"><h3>회원가입 유의사항</h3></td></tr>
			<tr><td colspan="2">
			<ul>
				<li>반드시 회원님 명의로 된 휴대폰, 아이핀을 이용해주세요.</li>
				<li>타인의 개인정보를 도용하여 가입할 경우 향후적발 시 서비스 이용제한 및 법적 제재를 받으실 수 있습니다.</li>
				<li>스타벅스커피 코리아의 공식홈페이지는 Internet Explorer 9.0이상.Chrome, Firefox, Safari 브라우저에 최적화 되어 있습니다.</li>
			</ul>
			</td></tr>
			<tr><td colspan=2 align=center><input type=submit value="다음" ><input type=reset value="취소"></td></tr>
	</table>
	</form>
	</center>
</body>
</html>