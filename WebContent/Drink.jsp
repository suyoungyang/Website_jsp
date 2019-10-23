<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content=text/html; charset=UTF-8">
<title>스타벅스 음료 페이지</title>
<!-- 초기화 -->
	<style>
		*{margin:0; padding:0;}
		body{font-family:'Times New Roman',serif;}
		li{list-style:none;}
		a{text-decoration:none;}
		img{border:0; }
	</style>
<!-- return -->
<style>
	#return{
		background-color:black;
		color:white;
		
		width:960px; height:20px;border:0;
		margin:0 auto;
		
	}
	a:link{color:white;}
	a:active {color:white;}
	a:visited {color:white;}
</style>
<!-- header -->
<style>
	#main_header{
		
		/*중앙 정렬*/
		width:960px;	margin:0 auto;
		
		/*절대 좌표*/
		height:160px;
		position:relative;
	}
	#main_header>#title{
		positon:absolute;
		left:20px; top:30px;
	}
	#main_header>#main_gnb{
		background-color:white;
		text-color:black;
		positon:absolute;
		right:20px; top:30px;
	}
</style>
<!-- 메뉴(1) -->
<style>
	#main_gnb > ul{overflow:hidden;}
	#main_gnb > ul > li{float:left;}
	#main_gnb > ul > li > a { 
		display:block;
		padding:2px 10px;
		border:1px solid black;
		width:100px;
		text-align:center;
		
		background:white;
		color:black;
	}
	#main_gnb > ul > li > a:hover {
		background:black;
		color:white;
	}
	#main_gnb > ul > li:first-child > a{border-radius:10px 0 0 10px;}
	#main_gnb > ul > li:last-child > a{border-radius:0 10px 10px 0;}
</style>

<!-- content -->
<style>
	#content{
		/*중앙 정렬*/
		width:960px; margin:0 auto;
		
		/*수평 레이아웃 구성*/
		overflow: hidden;
	}
	#content>#main_section{
		width:960px;
		float:left;
	}
</style>
<!-- section -->
<style>
	input:nth-of-type(1){display:none;}
	input:nth-of-type(1) ~ div:nth-of-type(1){display:none;}
	input:nth-of-type(1):checked ~ div:nth-of-type(1){display:block;}
	
	input:nth-of-type(2){display:none;}
	input:nth-of-type(2) ~ div:nth-of-type(2){display:none;}
	input:nth-of-type(2):checked ~ div:nth-of-type(2){display:block;}
	
	input:nth-of-type(3){display:none;}
	input:nth-of-type(3) ~ div:nth-of-type(3){display:none;}
	input:nth-of-type(3):checked ~ div:nth-of-type(3){display:block;}
	
	input:nth-of-type(4){display:none;}
	input:nth-of-type(4) ~ div:nth-of-type(4){display:none;}
	input:nth-of-type(4):checked ~ div:nth-of-type(4){display:block;}

	input:nth-of-type(5){display:none;}
	input:nth-of-type(5) ~ div:nth-of-type(5){display:none;}
	input:nth-of-type(5):checked ~ div:nth-of-type(5){display:block;}
	
	input:nth-of-type(6){display:none;}
	input:nth-of-type(6) ~ div:nth-of-type(6){display:none;}
	input:nth-of-type(6):checked ~ div:nth-of-type(6){display:block;}

	section.buttons{overflow:hidden;}
	section.buttons > label:first-child{border-radius:10px 0 0 10px;}
	section.buttons > label:last-child{border-radius:0 10px 10px 0;}
	
	section.buttons>label{
		/*수평 정렬*/
		display:block; float:left;
		
		/*크기 및 글자 위치 지정*/
		width:100px; height:30px;
		line-height:30px;
		text-align:center;
		
		/*테두리 지정*/
		box-sizing:border-box;
		border:1px solid black;
		
		/*색상 지정*/
		background:white;
		color:black;
	}
	input:nth-of-type(1):checked ~ section.buttons > label:nth-of-type(1){
		background:black;
		color: white;
	}
	input:nth-of-type(2):checked ~ section.buttons > label:nth-of-type(2){
		background:black;
		color: white;
	}
	input:nth-of-type(3):checked ~ section.buttons > label:nth-of-type(3){
		background:black;
		color: white;
	}
	input:nth-of-type(4):checked ~ section.buttons > label:nth-of-type(4){
		background:black;
		color: white;
	}
	input:nth-of-type(5):checked ~ section.buttons > label:nth-of-type(5){
		background:black;
		color: white;
	}
	input:nth-of-type(6):checked ~ section.buttons > label:nth-of-type(6){
		background:black;
		color: white;
	}
	
</style>
<!-- 목록 -->
<style>
	.tab_item{
		image-size:500px;
	}
	.item{
		overflow: hidden;
		padding:10px;
		border:1px solid black;
		border-top:none;
	}
	
</style>
</head>
<body>
<!-- return -->
<div id="return">
	<a href="http://localhost:8090/JSPWebEx04/Menu.html">← 이전화면</a>
</div>

<!-- header -->
<header id="main_header">
	<div id="title" align="center" >
		<a href="http://localhost:8090/JSPWebEx04/Main.jsp"><img src="image/logo.png" alt="logo" width="200px" ></a>
	</div>
	<nav id="main_gnb">
		<ul>
			<li><a href="http://localhost:8090/JSPWebEx04/Drink.jsp">Drink</a></li>
			<li><a href="http://localhost:8090/JSPWebEx04/Food.jsp">Food</a></li>
			<li><a href="http://localhost:8090/JSPWebEx04/Product.jsp">Product</a></li>
		</ul>
	</nav>
</header>

<!-- tab bar -->
<div id="content">
	<aside id="main_aside">
		<input id="new" type="radio" name="tab" checked="checked"/>
		<input id="espresso" type="radio" name="tab"/>
		<input id="brew" type="radio" name="tab"/>
		<input id="blended" type="radio" name="tab"/>
		<input id="frappuccino" type="radio" name="tab"/>
		<input id="fizzio" type="radio" name="tab"/>
	
		<section class="buttons">
			<label for="new">new product</label>
			<label for="espresso">espresso</label>
			<label for="brew">brew</label>
			<label for="blended">blended</label>
			<label for="frappuccino">frappuccino</label>
			<label for="fizzio">fizzio</label>
		</section>
	
	<div class="tab_item">
			<ul>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><a href="http://localhost:8090/JSPWebEx04/Drink_NitroColdBrew.jsp"><img src="image/음료/나이트로 콜드브루.PNG" alt="나이트로 콜드브루"></a></td>
						<td>나이트로 콜드브루</td>
					</tr>
					<tr>
						<td>Nitro Cold Brew</td>
					</tr>
					<tr>
						<td>5,800 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><a href="http://localhost:8090/JSPWebEx04/Drink_NitroChocolateCloud.jsp"><img src="image/음료/나이트로 쇼콜라클라우드.PNG" alt="나이트로 쇼콜라클라우드"></a></td>
						<td>나이트로 쇼콜라 클라우드</td>
					</tr>
					<tr>
						<td>Nitro Chocolat Cloud</td>
					</tr>
					<tr>
						<td>6,100 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/나이트로 쇼콜라.PNG" alt="나이트로 쇼콜라"></td>
						<td>나이트로 쇼콜라</td>
					</tr>
					<tr>
						<td>Nitro Chocolat</td>
					</tr>
					<tr>
						<td>6,100 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/돌체콜드브루.PNG" alt="돌체콜드브루"></td>
						<td>돌체콜드브루</td>
					</tr>
					<tr>
						<td>Dolce Cold Brew</td>
					</tr>
					<tr>
						<td>5,800 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/바닐라크림 콜드브루.PNG" alt="바닐라크림 콜드브루"></td>
						<td>바닐라크림 콜드브루</td>
					</tr>
					<tr>
						<td>Vanilla Cream Cold Brew</td>
					</tr>
					<tr>
						<td>5,500 원</td>
					</tr>
				</table></li>
			</ul>
			</div>
		<div class="tab_item">
			<ul>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/에스프레소-아이스 카라멜 마키아또.PNG" alt="아이스 카라멜 마키아또"></td>
						<td>아이스 카라멜 마키아또</td>
					</tr>
					<tr>
						<td>Iced Caramel Macchiato</td>
					</tr>
					<tr>
						<td>5,600 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/에스프레소-에스프레소 마키아또.PNG" alt="에스프레소 마키아또"></td>
						<td>에스프레소 마키아또</td>
					</tr>
					<tr>
						<td>Espresso Macchiato</td>
					</tr>
					<tr>
						<td>3,600 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/에스프레소-에스프레소 콘파나.PNG" alt="에스프레소 콘파나"></td>
						<td>에스프레소 콘파나</td>
					</tr>
					<tr>
						<td>Espresso Con Panna</td>
					</tr>
					<tr>
						<td>3,800 원</td>
					</tr>
				</table></li>
			</ul>
			
		</div>
		<div class="tab_item">
			<ul>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/브루드커피-오늘의 커피.PNG" alt="오늘의 커피"></td>
						<td>오늘의 커피</td>
					</tr>
					<tr>
						<td>Brewed Coffee</td>
					</tr>
					<tr>
						<td>3,800 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/브루드커피-아이스커피.PNG" alt="아이스커피"></td>
						<td>아이스 커피</td>
					</tr>
					<tr>
						<td>Iced Coffee</td>
					</tr>
					<tr>
						<td>4,100 원</td>
					</tr>
				</table></li>
			</ul>
		</div>
		<div class="tab_item">
			<ul>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/블렌디드음료-딸기블렌디드.PNG" alt="딸기블렌디드"></td>
						<td>딸기블렌디드</td>
					</tr>
					<tr>
						<td>Strawberry Yogurt Blended</td>
					</tr>
					<tr>
						<td>6,100 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/블렌디드음료-망고 패션 후르츠 블렌디드.PNG" alt="망고 패션 후르츠 블렌디드"></td>
						<td>망고 패션 후르츠 블렌디드</td>
					</tr>
					<tr>
						<td>Mango Passion Fruit Blended</td>
					</tr>
					<tr>
						<td>5,000 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/블렌디드음료-망고바나나블렌디드.PNG" alt="망고 바나나블렌디드"></td>
						<td>망고 바나나블렌디드</td>
					</tr>
					<tr>
						<td>Mango Banana Blended</td>
					</tr>
					<tr>
						<td>6,300 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/블렌디드음료-아몬드 바나나블렌디드.PNG" alt="아몬드 바나나블렌디드"></td>
						<td>아몬드 바나나블렌디드</td>
					</tr>
					<tr>
						<td>Almond Banana Blended</td>
					</tr>
					<tr>
						<td>6,500 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/블렌디드음료-아보카도 블렌디드.PNG" alt="아보카도 블렌디드"></td>
						<td>아보카도 블렌디드</td>
					</tr>
					<tr>
						<td>Avocado Blended</td>
					</tr>
					<tr>
						<td>6,900 원</td>
					</tr>
				</table></li>
			</ul>
		</div>
		<div class="tab_item">
			<ul>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/프라푸치노-다크 카라멜 커피 프라푸치노.PNG" alt="다크 카라멜 커피 프라푸치노"></td>
						<td>다크 카라멜 커피 프라푸치노</td>
					</tr>
					<tr>
						<td>Dark Caramel Coffee Frappuccino</td>
					</tr>
					<tr>
						<td>6,300 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/프라푸치노-딸기크림프라푸치노.PNG" alt="딸기크림프라푸치노"></td>
						<td>딸기크림프라푸치노</td>
					</tr>
					<tr>
						<td>White Strawberry Cream Frappuccino</td>
					</tr>
					<tr>
						<td>6,100 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/프라푸치노-모카프라푸치노.PNG" alt="모카프라푸치노"></td>
						<td>모카프라푸치노</td>
					</tr>
					<tr>
						<td>Mocha Frappuccino</td>
					</tr>
					<tr>
						<td>5,600 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/프라푸치노-이천 햅쌀 커피 프라푸치노.PNG" alt="이천 햅쌀 커피 프라푸치노"></td>
						<td>이천 햅쌀 커피 프라푸치노</td>
					</tr>
					<tr>
						<td>Icheon New Harvested Rice Coffee Frapuccino</td>
					</tr>
					<tr>
						<td>6,300 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/프라푸치노-자바 칩 프라푸치노.PNG" alt="자바 칩  프라푸치노"></td>
						<td>자바 칩 프라푸치노</td>
					</tr>
					<tr>
						<td>Java Chip Frapuccino</td>
					</tr>
					<tr>
						<td>6,100 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/프라푸치노-트리플 모카 프라푸치노.PNG" alt="트리플 모카  프라푸치노"></td>
						<td>트리플 모카 프라푸치노</td>
					</tr>
					<tr>
						<td>Triple Mocha Frapuccino</td>
					</tr>
					<tr>
						<td>6,300 원</td>
					</tr>
				</table></li>
				<li><table>
					<tr>
						<td rowspan="3"><img src="image/음료/프라푸치노-트리플 모카 프라푸치노.PNG" alt="트리플 모카  프라푸치노"></td>
						<td>트리플 모카 프라푸치노</td>
					</tr>
					<tr>
						<td>Triple Mocha Frapuccino</td>
					</tr>
					<tr>
						<td>6,300 원</td>
					</tr>
				</table></li>
			</ul>
			
		</div>
		<div class="tab_item">
			<ul>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/피지오-그린티 레모네이드 피지오.PNG" alt="그린티 레모네이드 피지오"></td>
						<td>그린티 레모네이드 피지오</td>
					</tr>
					<tr>
						<td>Green Tea Lemonade Starbucks Fizzio<sup>TM</sup></td>
					</tr>
					<tr>
						<td>5,400 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/피지오-블랙티 레모네이드 피지오.PNG" alt="블랙티 레모네이드 피지오"></td>
						<td>블랙티 레모네이드 피지오</td>
					</tr>
					<tr>
						<td>Black Tea Lemonade Starbucks Fizzio<sup>TM</sup></td>
					</tr>
					<tr>
						<td>5,400 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/피지오-쿨라임 피지오.PNG" alt="쿨라임 피지오"></td>
						<td>쿨라임 피지오</td>
					</tr>
					<tr>
						<td>Cool Lime Starbucks Fizzio<sup>TM</sup></td>
					</tr>
					<tr>
						<td>5,900 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/피지오-패션탱고 티 레모네이드 피지오.PNG" alt="패션탱고 티 레모네이드  피지오"></td>
						<td>패션탱고 티 레모네이드  피지오</td>
					</tr>
					<tr>
						<td>Passion Tango Tea Lemonade Starbucks Fizzio<sup>TM</sup></td>
					</tr>
					<tr>
						<td>5,400 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/음료/피지오-핑크자몽 피지오.PNG" alt="핑크자몽 피지오"></td>
						<td>핑크자몽 피지오</td>
					</tr>
					<tr>
						<td>Pink Grapefruit Starbucks Fizzio<sup>TM</sup></td>
					</tr>
					<tr>
						<td>6,300 원</td>
					</tr>
				</table></li>
			</ul>
		</div>
	</aside>
	<footer>
	
	</footer>
</div>

</body>
</html>