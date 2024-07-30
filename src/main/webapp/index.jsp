<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 임의로 넣은값입니다 변경예정 -->
<style>
	@font-face {
	    font-family: 'Cafe24Ohsquare';
	    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/Cafe24Ohsquare.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	@font-face {
	    font-family: 'Cafe24Ohsquareair';
	    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2202@1.0/Cafe24Ohsquareair.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	@font-face {
	    font-family: 'Cafe24Ssurround';
	    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24Ssurround.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	header{
		width:1500px;
		height:200px;
		display: flex;
  		justify-content: center;
  		position: relative;
		border-bottom: 2px solid black;
		margin:0px auto;
	}
	#top_search{
		width: 300px;
		position: absolute;
  		top: 50%;
  		left:auto;
	}
	#top_left{
	}
	#top_center{
	}
	#top_right{
	}
	#top_Search{
	}
	section{
		width:1200px;
		height:1200px;
		margin:0px auto;
	}
	#contentBox{
		width:1200px;
		height:250px; 
		background-color: #fff6ec;
		font-family: 'Cafe24Ohsquareair';
	}
	.listBox{
		width:1200px;
		height:300px;
		border:1px auto black;
		background-color: #fff6ec;
		display: flex;
	}
	.list{
		border:1px auto black;
		width:280px;
		height:280px;
		background-color: white;
		margin: 10px;
		font-family: 'Cafe24Ohsquareair';
	}
	h2{
		font-family: 'Cafe24Ohsquare';
		margin-top: 30px;
	}
	footer{
		height:200px;
		text-align:center;
		font-size: 10px;
	}
	#test1{
		font-family: 'Cafe24Ohsquare';
	}
	#test2{
		font-family: 'Cafe24Ssurround';
	}
	#1{
		text-align: center;
		padding : 100px 0;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<div id = "top_menu">
			<label>메뉴 들어갈 곳</label>
		</div>
		<div id = "top_left">
			<a href="index.jsp">메인</a>
		</div>
		<div id = "top_center">
			<form action="">
				<input type="text" id = "top_Search"/> <input type="button" value="검색" />
			</form>
		</div>
		<div id = "top_right">
			<a href="login.jsp">로그인</a> | <a href="memjoin.jsp">회원 가입</a>
		</div>
	</header>
	<section>
		<article>
			<div><h1 id = "test1">제목</h1></div>
			<div id = "contentBox">배너들어갈곳</div>
		</article>
		<article>
			<h2>인기상품</h2>
			<div class = "listBox">
				<div class="list"><label id = "1">상품이미지</label></div>
				<div class="list">상품이미지</div>
				<div class="list">상품이미지</div>
				<div class="list">상품이미지</div>
			</div>
			<h2 id = "test2">인기상품</h2>
			<div class = "listBox">
				<div class="list">상품이미지</div>
				<div class="list">상품이미지</div>
				<div class="list">상품이미지</div>
				<div class="list">상품이미지</div>
			</div>
		</article>
	</section>
	<footer>
		<label>하단 내용</label>
	</footer>
</body>
</html>