<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/wishJam/css/banner.css" />
<script>
	
</script>
<div class="container">
	<div class="header">
		<h2>배너 관리</h2>
		<input type="text" placeholder="검색어를 입력해주세요.">
		<button type="button">검색</button>
	</div>
	<table class="banner-management">
		<thead>
			<tr>
				<th width="30px">번호</th>
				<th width="200px">배너명</th>
				<th width="150px">기간</th>
				<th width="180px">미리보기</th>
				<th width="50px">선택</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>배너1</td>
				<td>2024.07.01 ~ 2024.07.10</td>
				<td><img src="/wishJam/img/banner/null.jpg" alt="Preview"></td>
				<td><input type="checkbox" id = "chkbox" name = "chkbox"/></td>
			</tr>
			<tr>
				<td>2</td>
				<td>배너2</td>
				<td>2024.07.01 ~ 2024.07.10</td>
				<td><img src="/wishJam/img/banner/null.jpg" alt="Preview"></td>
				<td><input type="checkbox" id = "chkbox" name = "chkbox"/></td>
			</tr>
		</tbody>
	</table>
	<div>
		<button type="button">추가</button>
		<button type="submit">선택 삭제</button>
	</div>
</div>
