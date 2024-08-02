<%@page import="javax.websocket.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String p = "1234";
	String pwd = request.getParameter("pwd");
	if(pwd!=null) {
		if(pwd.equals(p)){
			%>
				<script>
					function modifyImg(){
						
					}
				</script>
				<div>
					<h1>관리자 수정</h1>
					<div>
						<label>프로필 사진 변경</label>
						<div><img src="/wishJam/img/bonobono.jpg" alt="bonobono" onclick="modifyImg();"/></div>
					</div>
				</div>
			<%
		}else{
			%>
				<script>
					window.alert('재입력');
					window.location='managerModify.jsp';
				</script>
			<%
		}
	}else{
		%>
			<div>
		<h1>관리자 정보 수정</h1>
		<form action="managerModify.jsp">
		<div>
			<label>비밀번호 입력</label><input type="password" name = "pwd"/>
		</div>
		</form>
		</div>
		<%
	}
	%>
