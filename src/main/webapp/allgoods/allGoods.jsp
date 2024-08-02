<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/allFonts.css" />
<link rel="stylesheet" href="/wishJam/css/burger.css" />
<link rel="stylesheet" href="/wishJam/css/index.css" />
<link rel="stylesheet" href="/wishJam/css/allFonts.css" />
<meta charset="UTF-8">
<style>
section {
	font-family: 'Pretendard-Regular';
	width: 940px;
	height: 2000px;
	border: 1px solid black;
	margin: 0 auto;
}

#filter {
	float: right;
}

.container {
	width: 100%;
	height: 700px;
	display: flex;
	margin-top: 100px;
	flex-wrap: wrap;
}

.item {
	width: 223px;
	height: 380px;
	margin-right: 13px;
	margin-bottom: 30px;
	border: 1px solid blue;
	position: relative;
	border-radius: 20px;
}

.rightbox {
	margin-right: 0;
}

.inner {
	width: 100%;
	height: 140px;
	border: 1px solid red;
	position: absolute;
	bottom: 0;
}

.inner div {
	margin-bottom: 4px;
}

#select_2 {
	width: 130px;
	height: 50px;
}

.img img {
	width: 100%;
	height: 240px;
	object-fit: cover;
	border-radius: 20px 20px 0 0;
}

.heart {
	width: 32px;
	height: 30px;
	position: absolute;
	right: 0;
	bottom: 0;
}

h2 {
	font-family: 'Cafe24Ssurround';
}

.discount {
	color: #FF4900;
}

.writer {
	font-size: 14px;
	color: #747474;
}
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
	<section>
		<h2>전체 상품</h2>
		<article>
			<div id="filter">
				<select name="select2" id="select_2">
					<option value="all">인기순</option>
					<option value="all">최신순</option>
				</select>
			</div>
		</article>




		<div class="wrapper">
			<div class="container">

				<div class="item ">
					<div class="img">
						<img src="/wishJam/img/img2.jpeg" alt="a">
					</div>
					<div class="inner">
						<div class="nickname">봉구봉구</div>
						<div>캐릭터 인형</div>
						<div>
							<span class="discount">10%</span>15,000
						</div>
						<span class="heart"><img src="/wishJam/img/heart.png"></span>
					</div>
				</div>

				<div class="item ">
					<div class="img">
						<img src="/wishJam/img/img1.jpg">
					</div>
					<div class="inner">
						<div class="writer">작가</div>
						<div>제목</div>
						<div>가격</div>
						<span class="heart"><img src="/wishJam/img/heart_gray.png"></span>
					</div>
				</div>

				<div class="item ">
					<div class="inner">
						<div>작가</div>
						<div>제목</div>
						<div>가격</div>
					</div>
				</div>

				<div class="item rightbox">
					<div class="inner">
						<div>작가</div>
						<div>제목</div>
						<div>가격</div>
						<span class="heart"><img src="/wishJam/img/heart_gray.png"></span>
					</div>
				</div>

				<div class="item">
					<div class="inner">
						<div>작가</div>
						<div>제목</div>
						<div>가격</div>
					</div>
				</div>
				<div class="item item6 "></div>
				<div class="item item7"></div>
				<div class="item item8  rightbox"></div>
				<div class="item item8 "></div>
			</div>


		</div>

	</section>
</body>
</html>