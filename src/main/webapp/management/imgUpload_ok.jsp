	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<%@page import="java.io.*"%>
	<%@page import="com.oreilly.servlet.MultipartRequest"%>
	<jsp:useBean id="mdao" class="com.manage.wishJam.manageDAO" scope="session"/>
	<%
		String path = request.getRealPath("/");
		System.out.println(path);
		mdao.setHomePath(path);
	%>
	<%
		String savepath = mdao.getHomePath()+mdao.getUrl();
		MultipartRequest mr = new MultipartRequest(request,savepath,"utf-8");
	%>
		<script>
			window.alert('파일 올리기 성공!');
			opener.window.location.reload();
			window.self.close();
		</script>