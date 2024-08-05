<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@page import="com.manage.wishJam.ExampleDTO"%>
<jsp:useBean id = "edao" class = "com.manage.wishJam.ExampleDAO"/>
<jsp:useBean id = "edto" class = "com.manage.wishJam.ExampleDTO"/>
<!DOCTYPE html>
<script>
	function editGrade() {
		
		document.getElementById('g_point');
		var input = document.getElementsByClassName('g_point');
		for(var i = 0; i < input.length; i++) {
			input[i].readonly=false;
			
		}
	}
</script> 
<div>
	<h1>회원등급</h1>
	<table>
	<thead>
		<tr>
			<th>등급</th>
			<th>요구포인트</th>
		</tr>
	</thead>
	<tbody>
	<%
	ArrayList<ExampleDTO> arr = edao.ex();
	if(arr!=null){
		for(ExampleDTO dto : arr){
			%>
				<tr>
					<td><%=dto.getG_name() %></td>
					<td><input type="text" id = "g_point" value="<%=dto.getG_point() %>" name = "g_point" readonly = "readonly"/></td>
				</tr>
			<%
		}
	}
	else{
		%>
			<tr>
				<td colspan="2"><label>등급을 설정해주세요</label></td>
			</tr>
		<%
	}
	%>
	<tr>
		<td colspan="2">
		<input type="button" value="수정하기" onclick="editGrade();"/>
		<input type="button" value="취소하기"/>
		</td>
	</tr>
	</tbody>
	</table>
</div>