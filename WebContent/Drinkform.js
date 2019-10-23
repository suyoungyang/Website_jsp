function drinkcheck(){
	if(document.drinkform.name.value==""){
		alert("음료가 선택되지 않았습니다.");
		document.drinkform.name.focus();
		return;
	}
	if(document.drinkform.cup.value==""){
		alert("컵 종류를 선택해주세요.");
		document.dirnkform.cup.focus();
		return;
	}
	if(document.drinkform.size.value==""){
		alert("컵의 사이즈를 선택해주세요.");
		document.dirnkform.size.focus();
		return;
	}
	document.drinkform.menu.value='insert';
	document.drinkform.submit();
}
function deletecheck(){
	ok=confirm("삭제하시겠습니까?");
	if(ok){
		document.drinkform.menu.value='delete';
		document.drinkform.submit();
	}else{
		return;
	}
	
	
}