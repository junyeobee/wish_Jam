<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.boximg {
	width: 100px;
	height: 100px;
	object-fit: cover;
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

ul {
	padding: 0;
	margin: 0px auto;
	list-style: none;
}

.reportpart {
	width: 100%;
	height: 50px;
	position: fixed;
	bottom: 0;
}
</style>
</head>
<body>
	<section>
		<h2>신고하기</h2>
		<article>
			신고 게시글
			<div>
				<img src="../img/img1.jpg" class="boximg lfloat">
				<div>
					상품 이름<br> 상품 설명과 가격
				</div>
			</div>
		</article>
		<article class="fclear">
			신고 사유
			<div>
				<ul>
					<li><input type="radio" name="reason">1</li>
					<li><input type="radio" name="reason">2</li>
					<li><input type="radio" name="reason">3</li>
					<li><input type="radio" name="reason">4</li>
					<li><input type="radio" name="reason">기타</li>
					<li><textarea readonly>기타 누르면 활성화 시키기</textarea></li>
				</ul>
			</div>
		</article>
		<div class="reportpart">
			<ul>
				<li><a href="#" class="lfloat">신고하기</a></li>
				<li><a href="#">취소</a></li>
			</ul>
		</div>
	</section>
</body>
</html>