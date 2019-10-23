<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content=text/html; charset=UTF-8">
<title>스타벅스 제품 페이지</title>
<!-- 초기화 -->
	<style>
		*{margin:0; padding:0;}
		body{font-family:'Times New Roman',serif;}
		li{list-style:none;}
		a{text-decoration:none;}
		img{border:0;}
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
		width:120px; height:30px;
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
		<input id="mug/glass" type="radio" name="tab" checked="checked"/>
		<input id="tumbler" type="radio" name="tab"/>
		<input id="plastic tumbler" type="radio" name="tab"/>
		<input id="thermos" type="radio" name="tab"/>
		<input id="accessory" type="radio" name="tab"/>
		<input id="coffee maker" type="radio" name="tab"/>
	
		<section class="buttons">
			<label for="mug/glass">mug/glass</label>
			<label for="tumbler">tumbler</label>
			<label for="plastic tumbler">plastic tumbler</label>
			<label for="thermos">thermos</label>
			<label for="accessory">accessory</label>
			<label for="coffee maker">coffee maker</label>
		</section>
	<!-- mug/glass -->
	<div class="tab_item">
			<ul>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/상품/글라스-서머 포멜로 아이스크림 볼.PNG" alt="서머 포멜로 아이스크림 볼"></td>
						<td>서머 포멜로 아이스크림 볼</td>
					</tr>
					<tr>
						<td>Summer pomelo icecream bowl</td>
					</tr>
					<tr>
						<td>19,000 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/상품/글라스-팬시 사이렌 글라스 머그502ml.PNG" alt="팬시 사이렌 글라스 머그502ml"></td>
						<td>팬시 사이렌 글라스 머그502ml</td>
					</tr>
					<tr>
						<td>Fancy siren glass mug 502ml</td>
					</tr>
					<tr>
						<td>16,000 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/상품/글라스-스카이블루 그러데이션 클라스473ml.PNG" alt="스카이블루 그러데이션 클라스473ml"></td>
						<td>스카이블루 그러데이션 클라스473ml</td>
					</tr>
					<tr>
						<td>Skyblue gradayion glass 473ml</td>
					</tr>
					<tr>
						<td>14,000 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/상품/글라스-서머에버 글라스 워터보틀533ml.PNG" alt="서머에버 글라스 워터보틀533ml"></td>
						<td>서머에버 글라스 워터보틀533ml</td>
					</tr>
					<tr>
						<td>Summer ever glass waterbottle 533ml</td>
					</tr>
					<tr>
						<td>16,000 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/상품/글라스-서머에버 글라스 콜드컵473ml.PNG" alt="서머에버 글라스 콜드컵473ml"></td>
						<td>서머에버 글라스 콜드컵473ml</td>
					</tr>
					<tr>
						<td>Summer ever glass coldcup 473ml</td>
					</tr>
					<tr>
						<td>19,000 원</td>
					</tr>
				</table></li>
				</ul>
			</div>
		<!-- stainless tumbler -->
		<div class="tab_item">
			<ul>
				<li class="item"><table>
						<tr>
							<td rowspan="3"><img src="image/푸드/케이크-베리베리바움쿠헨.PNG" alt="베리베리 바움쿠헨 "></td>
							<td>베리베리 바움쿠헨</td>
						</tr>
						<tr>
							<td>Berry Berry Baumkuchen</td>
						</tr>
						<tr>
							<td>16,000 원</td>
						</tr>
					</table></li>
				<li class="item"><table>
						<tr>
							<td rowspan="3"><img src="image/푸드/케이크-블랙쿠키치즈케이크.PNG" alt="블랙쿠키 치즈케이크 "></td>
							<td>블랙쿠키 치즈케이크</td>
						</tr>
						<tr>
							<td>Black Cookie Cheese Cake</td>
						</tr>
						<tr>
							<td>6,500 원</td>
						</tr>
					</table></li>
				<li class="item"><table>
						<tr>
							<td rowspan="3"><img src="image/푸드/케이크-세븐 레이어가나슈케이크.PNG" alt="7 레이어 가나슈 케이크 "></td>
							<td>7 레이어 가나슈 케이크 </td>
						</tr>
						<tr>
							<td>7 Layer GAnache Cake</td>
						</tr>
						<tr>
							<td>5,700 원</td>
						</tr>
					</table></li>	
				<li class="item"><table>
						<tr>
							<td rowspan="3"><img src="image/푸드/케이크-초콜릿 벨벳케이크.PNG" alt="초콜릿 벨벳 케이크"></td>
							<td>초콜릿 벨벳 케이크</td>
						</tr>
						<tr>
							<td>Chocolate Velvet Cake</td>
						</tr>
						<tr>
							<td>15,000 원</td>
						</tr>
					</table></li>
				<li class="item"><table>
						<tr>
							<td rowspan="3"><img src="image/푸드/케이크-DT밀당케이크듀오.PNG" alt="DT밀당 케이크_듀오"></td>
							<td>DT밀당 케이크_듀오</td>
						</tr>
						<tr>
							<td>DT Cake_Rich Chocolate</td>
						</tr>
						<tr>
							<td>3,900 원</td>
						</tr>
					</table></li>	
			</ul>
		</div>
		<!-- sandwich&salad -->
		<div class="tab_item">
			<ul>
				<li class="item"><table>
						<tr>
							<td rowspan="3"><img src="image/푸드/샌드위치&샐러드-그레인&쉬림프 샐러드포미.PNG" alt="그레인&쉬림프 샐러드포미"></td>
							<td>그레인&쉬림프 샐러드포미</td>
						</tr>
						<tr>
							<td>Grain & Shrimp Salad For Me</td>
						</tr>
						<tr>
							<td>3,800 원</td>
						</tr>
					</table></li>	
				<li class="item"><table>
						<tr>
							<td rowspan="3"><img src="image/푸드/샌드위치&샐러드-단호박 리코타 샐러드JAR.PNG" alt="단호박 리코타 샐러드JAR"></td>
							<td>단호박 리코타 샐러드JAR</td>
						</tr>
						<tr>
							<td>Sweet Pumpkin Ricotta Salad JAR</td>
						</tr>
						<tr>
							<td>6,200 원</td>
						</tr>
					</table></li>	
				<li class="item"><table>
						<tr>
							<td rowspan="3"><img src="image/푸드/샌드위치&샐러드-베이컨 과카몰리샌드위치.PNG" alt="베이컨 과카몰리 샌드위치"></td>
							<td>베이컨 과카몰리 샌드위치</td>
						</tr>
						<tr>
							<td>Bacon Guacamole Sandwich</td>
						</tr>
						<tr>
							<td>6,300 원</td>
						</tr>
					</table></li>	
				<li class="item"><table>
						<tr>
							<td rowspan="3"><img src="image/푸드/샌드위치&샐러드-치킨 커틀렛 아보카도 샌드위치.PNG" alt="치킨 커틀렛 아보카도 샌드위치"></td>
							<td>치킨 커틀렛 아보카도 샌드위치</td>
						</tr>
						<tr>
							<td>Chicken Cutlet Avacado Sandwich</td>
						</tr>
						<tr>
							<td>8,200 원</td>
						</tr>
					</table></li>
			</ul>
		</div>
 		<!-- hot food -->
		<div class="tab_item">
			<ul>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/푸드/따뜻한 푸드-우리나라 옥고감.PNG" alt="우리나라 옥고감"></td>
						<td>우리나라 옥고감</td>
					</tr>
					<tr>
						<td>Steamed Corn,Sweet Potato,Potato</td>
					</tr>
					<tr>
						<td>4,200 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/푸드/따뜻한 푸드-이탈리안 뇨끼.PNG" alt="이탈리안 뇨끼"></td>
						<td>이탈리안 뇨끼</td>
					</tr>
					<tr>
						<td>Italian Gnocchi</td>
					</tr>
					<tr>
						<td>7,500 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/푸드/따뜻한 푸드-현미크림수프.PNG" alt="현미크림수프"></td>
						<td>현미크림수프</td>
					</tr>
					<tr>
						<td>Brown Rice Cream Soup</td>
					</tr>
					<tr>
						<td>3,900 원</td>
					</tr>
				</table></li>
			</ul>
		</div>
		<!-- fruit&yogurt -->
		<div class="tab_item">
			<ul>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/푸드/과일&요거트-사과가득핸디젤리.PNG" alt="사과가득핸디젤리"></td>
						<td>사과가득핸디젤리</td>
					</tr>
					<tr>
						<td>Apple Handy Jelly</td>
					</tr>
					<tr>
						<td>2,800 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/푸드/과일&요거트-리얼후르츠-사과.PNG" alt="리얼후르츠-사과"></td>
						<td>리얼후르츠-사과</td>
					</tr>
					<tr>
						<td>Starbucks Real Fruit - Apple</td>
					</tr>
					<tr>
						<td>3,000 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/푸드/과일&요거트-밀크 푸딩.PNG" alt="밀크 푸딩"></td>
						<td>밀크 푸딩</td>
					</tr>
					<tr>
						<td>Milk Pudding</td>
					</tr>
					<tr>
						<td>3,300 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/푸드/과일&요거트-제주 자연 청 세트.PNG" alt="제주 자연 청 세트"></td>
						<td>제주 자연 청 세트</td>
					</tr>
					<tr>
						<td>Jeju Marmalade Set</td>
					</tr>
					<tr>
						<td>26,000 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/푸드/과일&요거트-하루한컵 green.PNG" alt="하루한컵 green"></td>
						<td>하루한컵 green</td>
					</tr>
					<tr>
						<td>A Fresh Cup A Day, green</td>
					</tr>
					<tr>
						<td>2,600 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/푸드/과일&요거트-하루한컵 red.PNG" alt="하루한컵 red"></td>
						<td>하루한컵 red</td>
					</tr>
					<tr>
						<td>A Fresh Cup A Day, red</td>
					</tr>
					<tr>
						<td>2,600 원</td>
					</tr>
				</table></li>
			</ul>
			
		</div>
		<!-- snack & mini dessert -->
		<div class="tab_item">
			<ul>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/푸드/스낵&미니디저트-로고 코인 다크 초콜릿(골드).PNG" alt="로고 코인 다크 초콜릿(골드)"></td>
						<td>로고 코인 다크 초콜릿(골드)</td>
					</tr>
					<tr>
						<td>Logo Coin Dark Chocolate(Gold)</td>
					</tr>
					<tr>
						<td>4,800 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/푸드/스낵&미니디저트-로고 코인 밀크 초콜릿(실버).PNG" alt="로고 코인 밀크 초콜릿(실버)"></td>
						<td>로고 코인 밀크 초콜릿(실버)</td>
					</tr>
					<tr>
						<td>Logo Coin Milk Chocolate(Silver)</td>
					</tr>
					<tr>
						<td>4,800 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/푸드/스낵&미니디저트-로스티드 아몬드 앤 초콜릿.PNG" alt="로스티드 아몬드 앤 초콜릿"></td>
						<td>로스티드 아몬드 앤 초콜릿</td>
					</tr>
					<tr>
						<td>Roasted Almond & Chocolate</td>
					</tr>
					<tr>
						<td>3,900 원</td>
					</tr>
				</table></li>
				<li class="item"><table>
					<tr>
						<td rowspan="3"><img src="image/푸드/스낵&미니디저트-로스티드 아몬드 앤 초콜릿.PNG" alt="로스티드 아몬드 앤 초콜릿"></td>
						<td>로스티드 아몬드 앤 초콜릿</td>
					</tr>
					<tr>
						<td>Roasted Almond & Chocolate</td>
					</tr>
					<tr>
						<td>3,900 원</td>
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