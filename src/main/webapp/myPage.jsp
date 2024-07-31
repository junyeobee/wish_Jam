<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
section {
	width: 940px;
	margin: 0 auto;
}

#mypage_section1 {
	width: 100%;
	height: 350px;
	border: 1px solid red;
}

#mypage_wrap {
	width: 300px;
	height: 100%;
	margin: 0 auto;
	border: 1px solid blue;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
}

.profile_item {
	height: 30px;
	width: 100%;
	text-align: center;
}

.profileimg {
	width: 100px;
	height: 100px;
	border-radius: 100px;
	background-color: gray;
	text-align: center;
	margin-top: 80px;
}

.mypage_item {
	width: 223px;
	height: 380px;
	margin-right: 13px;
	margin-bottom: 30px;
	border: 1px solid blue;
	position: relative;
}

#mypage_section2 {
	height: 200px;
	border: 1px solid red;
	text-align: center;
}

#celllist_wrap {
	display: flex;
	flex-wrap: wrap;
}

.rightbox {
	margin-right: 0;
}
</style>
</head>
<body>


	<section>
		<h2>마이페이지</h2>
		<article id="mypage_section1">

			<div id="mypage_wrap">
				<div class="profileimg"></div>
				<div class="profile_item">닉네임</div>
				<div class="profile_item">등급</div>
			</div>

		</article>


		<article id="mypage_section2">
			<div>자기소개를 작성해주세요 !</div>

		</article>


		<article>
			<h3>판매내역</h3>
			<hr>
			<div id="celllist_wrap">
				<div class="mypage_item"></div>
				<div class="mypage_item"></div>
				<div class="mypage_item"></div>
				<div class="mypage_item rightbox"></div>
			</div>
		</article>


		<article>
			<h3>구매내역</h3>
			<hr>
			<div id="celllist_wrap">
				<div class="mypage_item"></div>
				<div class="mypage_item"></div>
				<div class="mypage_item"></div>
				<div class="mypage_item rightbox"></div>
			</div>
		</article>
	</section>
</body>
</html>