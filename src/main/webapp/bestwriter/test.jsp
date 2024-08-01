<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
section {
	font-family: 'Pretendard-Regular';
	width: 940px;
	height: 2000px;
	border: 1px solid black;
	margin: 0 auto;
}

article {
	margin-bottom: 50px;
}

article div {
	margin-right: 20px;
}

h2 {
	font-family: 'Cafe24Ssurround';
	margin-bottom: 50px;
}

#selllist_wrap {
	width: 100%;
	height: 200px;
	border: 1px solid gray;
	display: flex;
}

.bw_item {
	width: 200px;
	height: 100%;
	border: 1px solid gray;
	background-image: url("/wishJam/img/img1.jpg");
	background-size: cover;
}

.seller_pf_wrap {
	width: 150px;
	height: 40px;
	display: table;
	margin-left: 5px;
}

.seller_pf {
	width: 35px;
	height: 35px;
	border-radius: 50px;
	border: 1px solid gray;
}

h3 {
	display: table-cell;
	vertical-align: middle;
}

.rank {
	width: 25px;
	height: 25px;
	background-color: black;
	border-radius: 3px;
	display: block;
	color: white;
	text-align: center;
	margin: 3px;
}

#seller_tg {
	width: 100%;
	display: flex;
	flex-wrap: wrap;
}

#seller_tg div {
	width: 120px;
	height: 35px;
	border: 1px solid gray;
	border-radius: 20px;
	margin-right: 7px;
	margin-bottom: 5px;
	text-align: center;
}
</style>
</head>
<body>
		<article>

			<div class="seller_pf_wrap">
				<img src="/wishJam/img/seller.jpeg" class="seller_pf">
				<h3>작가 이름</h3>
			</div>

			<div id="selllist_wrap">
				<div class="bw_item">
					<span class="rank">1</span>
				</div>
				<div class="bw_item">
					<span class="rank">2</span>
				</div>
				<div class="bw_item">
					<span class="rank">3</span>
				</div>
				<div class="bw_item rightbox">
					<span class="rank">4</span>
				</div>
			</div>


		</article>

		<article>
			<div class="seller_pf_wrap">
				<img src="/wishJam/img/seller.jpeg" class="seller_pf">
				<h3>작가 이름</h3>
			</div>

			<div id="celllist_wrap">
				<div class="bw_item"></div>
				<div class="bw_item"></div>
				<div class="bw_item"></div>
				<div class="bw_item rightbox"></div>
			</div>
		</article>

		<article>
			<div class="seller_pf_wrap">
				<img src="/wishJam/img/seller.jpeg" class="seller_pf">
				<h3>작가 이름</h3>
			</div>

			<div id="celllist_wrap">
				<div class="bw_item"></div>
				<div class="bw_item"></div>
				<div class="bw_item"></div>
				<div class="bw_item rightbox"></div>
			</div>
		</article>

		<article>
			<div class="seller_pf_wrap">
				<img src="/wishJam/img/seller.jpeg" class="seller_pf">
				<h3>작가 이름</h3>
			</div>

			<div id="celllist_wrap">
				<div class="bw_item"></div>
				<div class="bw_item"></div>
				<div class="bw_item"></div>
				<div class="bw_item rightbox"></div>
			</div>
		</article>

</body>
</html>