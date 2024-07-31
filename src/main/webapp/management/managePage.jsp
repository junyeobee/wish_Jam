<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style>
    body {
        margin: 0;
        padding: 0;
        display: flex;
    }
    #manageNavbar {
        width: 200px;
        height: 100vh;
        background-color: black;
        color: white;
        padding: 10px;
    }
    #manageArea {
        flex: 1;
        padding: 10px;
        background-color: #f4f4f4;
    }
    .element {
        margin-bottom: 10px;
    }
    .pfimg {
		height: 100px;
		width: 100px;
		border-radius: 50px;
		object-fit: cover;
		border-radius: 50px;
	}
</style>
</head>
<body>    
    <div id="manageNavbar">
    	<div>
    		<a href="/wishJam/index.jsp">메인로고</a>
    	</div>
    	<div>
			<img src="/wishJam/img/bonobono.jpg" class="pfimg">
			<div>관리자 이름 님</div>
		</div>
        <div class="element">
            <label>상품관리</label>
            <a href="#">안녕하세요</a>
        </div>
        <div class="element">
            <label>회원설정</label>
            <a href="#">안녕하세요</a>
        </div>
        <div class="element">
            <label>키워드 관리</label>
            <a href="#">안녕하세요</a>
        </div>
        <div class="element">
            <label>공지사항 등록</label>
            <a href="#">안녕하세요</a>
        </div>
        <div class="element">
            <label>배너 관리</label>
            <a href="#">안녕하세요</a>
        </div>
        <div class="element">
            <label>등급 설정</label>
            <a href="#">안녕하세요</a>
        </div>
        <!-- 네비게이션 항목 추가 가능 -->
    </div>
    <section id="manageArea">
        <div id = "manageTop">
        	<ul>
        		<li><a href="#">menu1</a></li>
        		<li><a href="#">menu2</a></li>
        		<li><a href="#">menu3</a></li>
        	</ul>
        </div>
        <hr />
        <div id = "dd"><h1>관리자 페이지</h1></div>
        <div id = "d2">contentArea</div>
    </section>
</body>
</html>
