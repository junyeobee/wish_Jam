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

.txtfunc {
	display: flex;
}

.bordbox {
	border: 1px solid gray;
}

.editbox {
	border: 1px solid gray;
	padding: 15px;
}

.txtimg {
	width: 400px;
	object-fit: cover;
}

.txtimg:hover {
	cursor: pointer;
}

#txt:focus {
	outline: 0;
}

.editor {
	margin: 0 auto;
	width: 600px;
}

#uploadImg[type="file"] {
	position: absolute;
	width: 0;
	height: 0;
	padding: 0;
	overflow: hidden;
	border: 0;
}

.optbox:focus-within {
	background-color: #ffdbea;
}
</style>
<script>
	function addSale() {
		var salebtn = document.makeSellfm.addsale;
		var salebox = document.getElementById('salebox');
		if (salebtn.checked) {
			salebox.style.display = "block";
		} else {
			salebox.style.display = "none";
		}

	}

	function addterm(v) {
		var duebox = document.getElementById("duebox");

		if (v == "term") {
			duebox.style.display = "block";
		} else if (v == "every") {
			duebox.style.display = "none";
		}
	}

	function styleSelected(v) {
		var selected = document.getSelection().toString();
		var s = document.getSelection();
		/* console.log(s.selectNodeContents('<span>'));
		console.log(s.focusNode.toString()+s.focusOffset); */
		var content = document.getElementById("txt");
		var arr = (content.innerHTML).split(selected);
		if(v=='FS') {
			var st = '<span style="font-size: 11px">'+selected+'</span>';
		} else if(v=='B'){
			var st = '<span><b>' + selected + '</b></span>';
		} else if(v=='I'){
			var st = '<span><i>' + selected + '</i></span>';
		} else if(v=='UL'){
			var st = '<span><u>' + selected + '</u></span>';
		} else if(v=='C'){
			var st = '<span style="color: red;">' + selected + '</span>';
		} else if(v=='BC'){
			var st = '<span style="background-color: pink;">' + selected + '</span>';
		}

		var ad = arr[0] + st + arr[1];

		content.innerHTML = ad;	
	}
	
	/* function rangeat(){
		var se = document.getSelection();
		console.log(se.)
	} */

	function upImage(v) {
		var file = document.getElementById("uploadImg").files[0];
		var reader = new FileReader();

		reader.onload = function(e) {
			var page = document.getElementById("page");
			var content = document.getElementById("txt");

			content.innerHTML += '<div><img class="txtimg" src="'+reader.result+'"></div>';
		}

		reader.readAsDataURL(file);
	}

	function selectThem() {
		var allSale = document.makeSellfm.allSale;
		var saleGoods = document.makeSellfm.saleGoods;

		if (allSale.checked) {
			for (var i = 0; i < saleGoods.length; i++) {
				saleGoods[i].checked = "checked";
			}
		} else {
			for (var i = 0; i < saleGoods.length; i++) {
				saleGoods[i].checked = false;
			}
		}
	}

	function addPlace() {
		var placeCk = document.makeSellfm.place;
		var placediv = document.getElementById("addplace");

		if (placeCk.checked) {
			placediv.style.display = "block";
		} else {
			placediv.style.display = "none";
		}
	}
</script>
</head>
<body>
	<section>
		<h2>게시글 작성</h2>

		<form name="makeSellfm">
			<article>
				<ul>
					<li>섬네일 <img src="../img/img1.jpg" class="selectimg"></li>
					<li>카테고리 <select>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
					</select>
					<li>제목<input type="text">
					<li>설명<input type="text">
					<li>상세 설명
						<div class="editor">
							<div>
								<ul class="txtfunc">
									<li>
										<input type="button" value="FS" onclick="styleSelected(this.value)">
									</li>
									<li><input type="button" value="B" onclick="styleSelected(this.value)"></li>
									<li>
										<input type="button" value="I" onclick="styleSelected(this.value)">
									</li>
									<li>
										<input type="button" value="UL" onclick="styleSelected(this.value)">
									</li>
									<li>
										<input type="button" value="C" onclick="styleSelected(this.value)">
									</li>
									<li>
										<input type="button" value="BC" onclick="styleSelected(this.value)">
									</li>
									<li><!-- <input type="file" id="uploadImg" accept="image/*"
										onChange="upImage(this.value)"> -->
										<input type="button" value="이미지"></li>
								</ul>
							</div>
							<div class="editbox">
								<div style="text-align: left; cursor: text;">
									<span id="txt" contenteditable="true">여름 장이란 애시당초에 글러서, 아직 중천에 있건만 장판은 벌써 쓸쓸하고 더운 햇발이 벌여놓은 전 휘장 밑으로 등줄기를 훅훅 볶는다.</span>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div>
							<input type="radio" name="termbtn" value="every"
								onclick="addterm(this.value)" checked>상시 판매 <input
								type="radio" name="termbtn" value="term"
								onclick="addterm(this.value)">기간 판매
						</div>
						<div id="duebox" class="fbox fcenter" style="display: none;">
							<select>
								<option>1</option>
							</select> <select>
								<option>1</option>
							</select> <select>
								<option>1</option>
							</select> ~ <select>
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
					<li>
						<article style="border: 1px solid gray;">
							옵션 등록
							<div class="fbox optbox">
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
							<div class="fbox optbox">
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
						</article>
					</li>
					<li>
						<div>
							판매 방법 <input type="checkbox" name="delivery" value="1">배송
							<input type="checkbox" name="place" value="2"
								onclick="addPlace()">현장 거래
							<div id="addplace" style="display: none;">거래 희망 장소 거래 가능 시간
							</div>
						</div>
					<li>
						<div>추가 사항</div>
						<ul>
							<li><input type="checkbox" name="addsale"
								onclick="addSale()">할인 기능
								<div id="salebox" style="display: none;" class="bordbox">
									<input type="checkbox" name="allSale" onclick="selectThem()">전체
									선택
									<ul>
										<li><div class="bordbox">
												<ul class="fbox fcenter">
													<li><input type="checkbox" name="saleGoods"></li>
													<li>이름</li>
													<li>가격</li>
												</ul>
											</div></li>
										<li><div class="bordbox">
												<ul class="fbox fcenter">
													<li><input type="checkbox" name="saleGoods"></li>
													<li>이름</li>
													<li>가격</li>
												</ul>
											</div></li>
										<li>
											<div>
												할인률 <select>
													<option>10%</option>
													<option>20%</option>
													<option>30%</option>
													<option>40%</option>
													<option>50%</option>
												</select>
											</div>
										</li>
									</ul>
								</div></li>
						</ul>
					</li>
				</ul>
			</article>
			<article style="position: fixed; bottom: 0;">
				<table class="fbox fcenter">
					<tr>
						<td><input type="button" value="취소"></td>
						<td><input type="button" value="등록"></td>
				</table>
			</article>
		</form>
	</section>
</body>
</html>