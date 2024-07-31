<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/wishJam/css/allFonts.css">

<style>
section {
	width: 940px;
	margin: 0 auto;
	font-family: 'Pretendard-Regular';
}

.profileimg img {
	width: 80px;
	height: 80px;
	border-radius: 100px;
	background-color: gray;
	text-align: center;
	position: absolute;
	top: 0;
	]
}

#article_edit {
	width: 100%;
	height: 130px;
	display: flex;
	flex-wrap: wrap;
	display: flex;
}

#article_edit2 {
	width: 100%;
	height: 150px;
	display: flex;
	flex-wrap: wrap;
	border: 1px solid red;
}

#article_edit3 {
	width: 100%;
	height: 150px;
	display: flex;
	flex-wrap: wrap;
	border: 1px solid red;
}

#article_edit4 {
	width: 100%;
	height: 150px;
	border: 1px solid red;
	position: relative;
}

#article_edit4 div {
	widht: 100px;
	height: 50px;
	position: absolute;
	right: 0;
	bottom: 0;
}

.edit_item {
	display: flex;
	height: 200px;
	position: relative;
}

.label {
	width: 120px;
	font-weight: 600;
}

.nickname input {
	width: 360px;
	height: 38px;
}

.limit {
	height: 15px;
	font-size: 14px;
	position: absolute;
	bottom: 0;
	right: 0;
}

.input_wrap {
	width: 370px;
	height: 70px; 
	border : 1px solid blue;
	position: relative;
	border: 1px solid blue;
}

.input_wrap2 {
	width: 370px;
	height: 150px; 
	border : 1px solid blue;
	position: relative;
	border: 1px solid blue;
}
.introduce input {
	width: 360px;
	height: 120px;
}

.title {
	width: 100%;
	margin-bottom: 100px;
}

.title h2 {
	color: black;
	font-family: 'Cafe24Ssurround';
}

#bt_save {
	width: 100px;
	height: 40px;
}
</style>



</head>



<body>

	<section>

		<div class="title">
			<h2>내 정보 수정하기</h2>
		</div>
		<article id="article_edit">


			<div class="edit_item label">프로필 사진</div>
			<div class="profileimg edit_item">
				<img src="/wishJam/img/profile.png">
			</div>
		</article>



		<article id="article_edit2">

			<div class="edit_item label">닉네임</div>
			<div class="input_wrap">
				<div class="edit_item">
					<div class="nickname">
						<input type="text" name="nickname">

					</div>
				</div>
				<div class=" edit_item limit">0/10</div>

			</div>

		</article>


		<article id="article_edit3">

			<div class="edit_item label">소개글</div>
			<div class="input_wrap2">
				<div class="edit_item">
					<div class="introduce">
						<input type="text" name="introduce">
					</div>
				</div>

				<div class=" edit_item limit">0/100</div>

			</div>

		</article>

		<article id="article_edit4">
			<div>
				<input type="button" name="bt_save" value="저장하기" id="bt_save">
			</div>
		</article>

	</section>



</body>
</html>