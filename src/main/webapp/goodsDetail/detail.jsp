<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail page</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

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
	justify-content: space-between;
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
	text-align: right;
}

.rpbtn {
	width: 50px;
	height: 25px;
	border-radius: 50px;
	background-color: red;
}
</style>
<script>
	function openReport() {
		window.open('/wishJam/goodsDetail/report.jsp', 'report',
				'width=400, height=500');
	}

	function deleteGd(t) {
		t.parentNode.remove(t);
	}

	function plusBtn(t) {
		var amount = document.getElementsByName(t.name);
		amount[1].value = parseInt(amount[1].value, 10)+1;

		var totals = document.getElementById('totalprice');
		var price = parseInt(document.getElementById(t.name).innerText);
		totals.innerHTML= parseInt(document.getElementById('totalprice').innerText)+price+'원';
		
		var lname = document.getElementById(t.name+'_gname');
		var lamount = document.getElementById(t.name+'_amount');
		var lprice = document.getElementById(t.name+'_price');
		var gname= document.getElementById(t.name+'_name');

		if(lname==null){
			document.getElementById("option_table").innerHTML+='<div class="listable fbox"><table><tr><td id="'+t.name+'_gname">'+gname.innerText+'</td><td id="'+t.name+'_amount">'+amount[1].value+'개</td><td id="'+t.name+'_price">4000원</td></tr></table><span class="material-symbols-outlined kwicon" onclick="deleteGd(this)">close</span></div>';
		}
		else if(gname.innerText == lname.innerText){
			lamount.innerHTML = amount[1].value+'개';
			lprice.innerHTML=price+'원';
		}
	}

	function minusBtn(t) {
		var amount = document.getElementsByName(t.name);
		if (parseInt(amount[1].value, 10) > 0) {
			amount[1].value = parseInt(amount[1].value, 10) - 1;

			var totals = document.getElementById('totalprice');
			var price = parseInt(document.getElementById(t.name).innerText);
			totals.innerHTML = parseInt(document.getElementById('totalprice').innerText)
					- price + '원';
		}
	}
</script>
<body>
	<section class="option">
		<article>
			<form name="option">
				<div>
					<img class="boximg lfloat" src="../img/img2.jpeg">
					<div id="sg_idx1_name">당근 스티커</div>
					<div class="detail_price" id="sg_idx1">4000</div>
					원 <input type="button" value="-" name="sg_idx1"
						onclick="minusBtn(this)"> <input type="text"
						name="sg_idx1" value="0"> <input type="button" value="+"
						name="sg_idx1" onclick="plusBtn(this)">
				</div>
				<div class="fclear">
					<img class="boximg lfloat" src="../img/img2.jpeg">
					<div id="sg_idx2_name">당근 떡메모지</div>
					<div class="detail_price" id="sg_idx2">2000</div>
					원 <input type="button" value="-" name="sg_idx2"
						onclick="minusBtn(this)"> <input type="text" name="sg_idx2"
						value="0"> <input type="button" value="+" name="sg_idx2"
						onclick="plusBtn(this)">
				</div>
			</form>
		</article>
		<article class="fclear">
			<form name="option_table">
				<div id="option_table">
				</div>
				<div>총 상품 금액</div>
				<div id="totalprice">0원</div>
				<ul class="fbox">
					<li class="btnli"><a href="#">장바구니</a></li>
					<li class="btnli"><a href="#">구매하기</a></li>
				</ul>
			</form>
		</article>
	</section>

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
		<article class="reportbtn">
			<input type="button" value="신고" class="rpbtn" onclick="openReport()">
		</article>

	</section>
	<%@ include file="review.jsp"%>
</body>
</html>