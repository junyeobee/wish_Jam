<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail page</title>
</head>
<style>
body {
	width: 1000px;
	margin: 0px auto;
}

section {
	text-align: center;
}

.pfimg {
	height: 100px;
	width: 100px;
	border-radius: 50px;
	object-fit: cover;
	border-radius: 50px;
}

.option {
	position: sticky;
	position: -webkit-sticky;
	top: 0px;
	width: 350px;
	border: 1px solid gray;
	text-align: center;
	float: right;
}

.explain {
	width: 630px;
	border: 1px solid green;
}

.boximg {
	width: 100px;
	height: 100px;
	object-fit: cover;
}

.conimg {
	object-fit: contain;
	width: 630px;
}

.detail_price {
	text-align: right;
}

.listable {
	border: 1px solid pink;
}

ul {
	padding: 0;
	margin: 0px auto;
	text-align: center;
	list-style: none;
}

.fbox {
	display: flex;
}

.lfloat {
	float: left;
}

.rfloat {
	float: right;
}

.fclear {
	clear: both;
}

.btnli {
	border: 1px solid gray;
	width: 49%;
}

.colortobox {
	background-color: pink;
}

.reportbtn {
	position: sticky;
	position: -webkit-sticky;
	top: 90%;
	left: 90%;
	width: 350px;
	text-align: right;;
	float: right;
	
}

.rpbtn {
	width: 50px;
	height: 50px;
	border-radius: 50px;
	background-color: red;
}
</style>
<script>
	function addPrice() {
		var totals = document.getElementById('totalprice');
		totals.innerHTML = '<div>dd</div>';
	}
	
	function openReport(){
		window.open('/wishJam/goodsDetail/report.jsp','report','width=400, height=500');
	}
</script>
<body>
	<section class="option">
		<article>
			<form name="option">
				<div>
					<img class="boximg lfloat" src="../img/img2.jpeg">
					<div>상품 설명글</div>
					<div class="detail_price">얼마얼마원</div>
					<input type="button" value="-"> <input type="text"
						name="price1" value="0"> <input type="button" value="+"
						onclick="addPrice()">
				</div>
				<div class="fclear">
					<img class="boximg lfloat" src="../img/img2.jpeg">
					<div>상품 설명글</div>
					<div class="detail_price">얼마얼마원</div>
					<input type="button" value="-"> <input type="text"
						value="0"> <input type="button" value="+">
				</div>
			</form>
		</article>
		<article class="fclear">
			<form name="option_table">

				<table class="listable">
					<tr>
						<td>당근 스티커</td>
						<td>2개</td>
						<td>4000원</td>
						<td><input type="button" value="X"></td>
					</tr>
				</table>
				<table>
					<tr>
						<td>당근 스티커</td>
						<td>2개</td>
						<td>4000원</td>
						<td><input type="button" value="X"></td>
					</tr>
				</table>
				<div>총 상품 금액</div>
				<div id="totalprice">8000원</div>
				<ul class="fbox">
					<li class="btnli"><a href="#">장바구니</a></li>
					<li class="btnli"><a href="#">구매하기</a></li>
				</ul>
			</form>
		</article>
	</section>
	
	<article class="reportbtn">
			<input type="button" value="신고" class="rpbtn" onclick="openReport()">
		</article>

	<section class="explain">
		<article>
			<ul class="fbox">
				<li class="btnli"><a href="#">상세정보</a></li>
				<li class="btnli"><a href="#">리뷰</a></li>
			</ul>
		</article>
		<article>
			<img src="../img/img2.jpeg" class="conimg">
			<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Donec congue magna eget sapien vehicula consectetur. Ut viverra,
				eros eu sollicitudin facilisis, magna nisi interdum ante, non
				porttitor neque orci id metus. Nulla congue mauris massa, vitae
				sagittis felis convallis sed. Morbi non molestie ipsum. Aliquam
				posuere tempus diam, at porttitor nisl egestas nec. Quisque quis
				aliquam odio. In luctus magna ligula, et bibendum dolor sollicitudin
				non. Nunc rutrum ligula fringilla nunc mollis, a laoreet leo ornare.
				Nullam libero nunc, egestas et tincidunt non, ultricies non est.
				Donec rhoncus pellentesque nisi, eget condimentum risus dapibus at.
				In imperdiet tincidunt ipsum vel commodo. Vestibulum ultricies
				malesuada gravida. Nulla facilisi. Praesent scelerisque viverra dui,
				ut placerat arcu ultricies ac. Duis velit ex, egestas ac odio eget,
				condimentum mollis tortor. Duis a cursus ipsum. Nam orci purus,
				porttitor et lorem quis, lacinia auctor sem. Curabitur eu turpis in
				orci faucibus scelerisque. Donec a leo felis.</div>
			<img src="../img/img1.jpg" class="conimg">
		</article>
		<article>
			<div style="background-image: linear-gradient(white 30%, pink 30%);">
				<img src="../img/img1.jpg" class="pfimg">
				<div>메이커</div>
				<input type="button" value="찜">
			</div>
		</article>
		
	</section>
	<%@ include file="review.jsp"%>
</body>
</html>