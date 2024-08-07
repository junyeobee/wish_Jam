<%@page
	import="org.apache.commons.collections4.bag.SynchronizedSortedBag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.File"%>
<%@ page import="javax.servlet.*"%>
<jsp:useBean id="mdao" class="com.mypage.wishJam.MypageDAO" scope="session" />

<%
//String id="seller";
//String p="1234";
//String pwd= request.getParameter("pwd");

//if(pwd !=null){

//if(pwd.equals(p)){
	
	session = request.getSession(true);
	Object principal =
	
%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function modifyImg() {
		window.open('ImgUpload.jsp', 'ImgUpload',
				'width=400,height=400');
	}
	
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/allFonts.css" />
<link rel="stylesheet" href="/wishJam/css/burger.css" />
<link rel="stylesheet" href="/wishJam/css/index.css" />
<link rel="stylesheet" href="/wishJam/css/allFonts.css" />
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
section {
	width: 940px;
	margin: 0 auto;
	font-family: 'Pretendard-Regular';
}

.profileimg {
	position: relative;
	width: 80px;
	height: 80px;
}

.profileimg:hover { .edit { opacity:0.8;
	transition: 0.3s;
}

}
.profileimg img {
	width: 80px;
	height: 80px;
	border-radius: 100px;
	background-color: gray;
	text-align: center;
}

#article_edit {
	width: 100%;
	height: 130px;
	display: flex;
	flex-wrap: wrap;
}

#article_edit2 {
	width: 100%;
	height: 130px;
	display: flex;
	flex-wrap: wrap;
}

#article_edit3 {
	width: 100%;
	height: 150px;
	display: flex;
	flex-wrap: wrap;
	margin-bottom: 40px;
}

#article_edit4 {
	width: 100%;
	height: 150px;
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
	position: relative;
}

.input_wrap2 {
	width: 370px;
	height: 150px;
	position: relative;
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

}

.addr input {
	width: 257px;
	height: 38px;
	margin-bottom: 6px;
}

#bt {
	width: 100px;
	height: 40px;
}

.edit {
	width: 100%;
	height: 30px;
	z-index: 1;
	background-color: black;
	color: white;
	font-size: 13px;
	position: absolute;
	bottom: 0;
	text-align: center;
	border-radius: 0 0 100px 100px;
	vertical-align: center;
	opacity: 0;
	padding-top: 5px;
}
</style>

<script>
	
</script>

</head>



<body>
	<%@ include file="../header.jsp"%>
	<section>
		<form name="mypageedit" action="mypageEdit_of.jsp">
			<div class="title">
				<h2>내 정보 수정하기</h2>
			</div>
			<article id="article_edit">
				<%
				String path = request.getRealPath("/");
				mdao.setHomepath(path);
				File file = new File(mdao.getHomepath() + mdao.getUrl());
				File[] fileList = file.listFiles();
				String imgSrc = "/wishJam/img/member_profile/default.png";
				System.out.println(mdao.getHomepath());
				for (File f : fileList) {
					if (f.isFile()) {
						imgSrc = "/wishJam/img/member_profile/seller.jpeg";
						break;

					}
				}

				System.out.println(imgSrc);
				%>
				<div class="edit_item label">프로필 사진</div>
				<div class="profileimg ">
					<span class="edit">변경하기</span> <img src="<%=imgSrc%>" alt="mypageImg" onclick="modifyImg()">
				</div>

			</article>



			<article id="article_edit2">

				<div class="edit_item label">닉네임</div>
				<div class="input_wrap">
					<div class="edit_item">
						<div class="nickname">
							<input type="text" name="nickname" placeholder="닉네임을 작성해주세요.">

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
							<input type="text" name="introduce" placeholder="소개글을 작성해주세요.">
						</div>
					</div>

					<div class=" edit_item limit">0/100</div>

				</div>

			</article>


			<article id="article_edit3">

				<div class="edit_item label">주소 정보</div>
				<div class="input_wrap2">
					<div class="edit_item">
					
					
						<div class="addr">
						<input type="text" id="sample6_postcode" placeholder="우편번호">
<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" id="bt"><br>
<input type="text" id="sample6_address" placeholder="주소"><br>
<input type="text" id="sample6_detailAddress" placeholder="상세주소">
<input type="text" id="sample6_extraAddress" placeholder="참고항목">
						
							<!--  <input type="text" name="addr"> 
							<input type="button"vname="postalcode" value="우편번호 검색" id="bt"> 
								<input type="text" name="addr"> <input type="text" name="addr">-->
						</div>
					</div>


				</div>

			</article>

			<article id="article_edit4">
				<div>
					<input type="button" name="bt_save" value="저장하기" id="bt">
				</div>
			</article>
	</form>
	</section>


</body>
</html>