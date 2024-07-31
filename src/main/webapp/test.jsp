<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
  margin: 0;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 25%;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #555;
  color: white;
}

li a:hover:not(.active) {
  background-color: #555;
  color: white;
}
</style>
</head>
<body>

<ul>
  <li><a class="active" href="#">홈</a></li>
  <li><a href="#">공지사항</a></li>
  <li><a href="#">소개</a></li>
  <li><a href="#">자유게시판</a></li>
</ul>

<div style="margin-left:25%;padding:1px 16px;height:1000px;">
<h1>네비게이션</h1>
</div>
</body>
</html>