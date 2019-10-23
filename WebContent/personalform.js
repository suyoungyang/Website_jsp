function insertcheck(){
	if(document.personalform.id.value==""){
		alert("아이디를 입력해주세요.");
		document.personalform.id.focus();
		return;
	}
	if(document.personalform.passwd.value==""){
		alert("비밀번호를 입력해주세요.");
		document.personalform.passwd.focus();
		return;
	}
	if(document.personalform.name.value==""){
		alert("이름을 입력해주세요.");
		document.personalform.name.focus();
		return;
	}
	if(document.personalform.phone.value==""){
		alert("휴대전화를 입력해주세요.");
		document.personalform.phone.focus();
		return;
	}
	document.personalform.menu.value='insert';
	document.personalform.submit();
}
function agree(){
	alert("필수사항을 동의 해주세요.");
	return;
}
function updatecheck(){
	if(document.personalform.passwd.value==""){
		alert("비밀번호를 입력해주세요.");
		document.personalform.passwd.focus();
		return;
	}
	if(document.personalform.name.value==""){
		alert("이름을 입력해주세요.");
		document.personalform.name.focus();
		return;
	}
	if(document.personalform.phone.value==""){
		alert("휴대전화를 입력해주세요.");
		document.personalform.phone.focus();
		return;
	}
	document.personalform.menu.value='update';
	document.personalform.submit();
}
function deletecheck(){
	if(document.personalform.passwd.value==""){
		alert("비밀번호를 입력해주세요.");
		document.personalform.passwd.focus();
		return;
	}
	ok=confirm("회원 탈퇴 하시겠습니까?");
	if(ok){
		document.personalform.menu.value='delete';
		document.personalform.submit();	
	}else{
		return;
	}
	
}