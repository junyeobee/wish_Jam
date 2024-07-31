<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	width: 800px;
	margin: 0 auto;
	text-align: center;
}

.selectimg {
	width: 150px;
	height: 150px;
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

.fcenter {
	justify-content: center;
}

ul {
	text-decoration: none;
	list-style: none;
	padding: 0;
	margin: 0;
}
</style>
<script>
	function addsale() {
		var salebtn = document.getElementById('addsale');
		if (salebtn.checked) {
			document.getElementById('salebox').innerHTML = '<h3>a</h3>';
		} else {
			document.getElementById('salebox').innerHTML='';
		}

	}
</script>
</head>
<body>
	<section>
		<h2>게시글 작성</h2>
		<article>
			<ul>
				<li>섬네일 <img src="../img/img1.jpg" class="selectimg"></li>


				<li><select>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
				</select>
				<li>제목<input type="text">
				<li>설명<input type="text">
				<li>상세 설명
					<div>
						<div>
							<input type="button" value="B">
						</div>
						<textarea>텍스트에어리어</textarea>
					</div>
				</li>
				<li class="fbox fcenter">기간
					<div>
						<select>
							<option>1</option>
						</select> <select>
							<option>1</option>
						</select> <select>
							<option>1</option>
						</select>
					</div> ~
					<div>
						<select>
							<option>1</option>
						</select> <select>
							<option>1</option>
						</select> <select>
							<option>1</option>
						</select>
					</div>
				</li>
				<li>
					<div>
						해시태그<input type="text">
					</div>
					<div>
						<ul class="fbox fcenter">
							<li>추천</li>
							<li><input type="button" value="#a"></li>
							<li><input type="button" value="#b"></li>
							<li><input type="button" value="#c"></li>
						</ul>
					</div>
				</li>
				<li><article style="border: 1px solid gray;">
						옵션 등록
						<div class="fbox">
							<img src="../img/img1.jpg" class="selectimg">
							<div>
								<ul>
									<li>이름 <input type="text"></li>
									<li>가격 <input type="text">원
									</li>
									<li>
										<ul class="fbox">
											<li>판매 수량 <input type="text"></li>
											<li>구매 제한 <input type="text"></li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</article></li>
				<li>
					<div>추가 사항</div>
					<ul>
						<li><input type="checkbox" id="addsale" onclick="addsale()">할인
							기능
							<div id="salebox"></div></li>
					</ul>
				</li>
			</ul>
		</article>
		<article>
			<ul class="fbox fcenter">
				<li><input type="button" value="취소">
				<li><input type="button" value="등록">
			</ul>
		</article>
	</section>
</body>
</html>