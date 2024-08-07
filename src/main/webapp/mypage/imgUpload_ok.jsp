	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<%@page import="java.io.*"%>
	<%@page import="com.oreilly.servlet.MultipartRequest"%>
<jsp:useBean id="mdao" class="com.mypage.wishJam.MypageDAO"
	scope="session" />
	<%
		String path = request.getRealPath("/");
		System.out.println(path);
		mdao.setHomepath(path);
	%>
	<%
		String savepath = mdao.getHomepath()+mdao.getUrl();
		MultipartRequest mr = new MultipartRequest(request,savepath,"utf-8");
	%>
		<script>
			window.alert('프로필 사진이 변경되었습니다.');
			opener.window.location.reload();
			window.self.close();
		</script>