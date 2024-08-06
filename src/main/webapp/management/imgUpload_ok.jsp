<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.manage.wishJam.MyFileRenamePolicy"%>
<%@page import="com.manage.wishJam.manageDAO"%>
<jsp:useBean id="mdao" class="com.manage.wishJam.manageDAO" scope="session"/>

<%
    String path = request.getRealPath("/");
    mdao.setHomePath(path);

    // 세션에서 사용자 ID 가져오기
    String userId = (String)session.getAttribute("userId");

    // MyFileRenamePolicy 인스턴스 생성 시 사용자 ID 전달
    MyFileRenamePolicy renamePolicy = new MyFileRenamePolicy(userId);

    // 파일 저장 경로 설정
    String savepath = mdao.getHomePath() + mdao.getUrl();

    // MultipartRequest 인스턴스 생성
    int maxPostSize = 10 * 1024 * 1024;
    String encoding = "UTF-8";

    MultipartRequest mr = new MultipartRequest(request, savepath, maxPostSize, encoding, renamePolicy);
%>
<script>
    window.alert('파일 올리기 성공!');
    window.self.close();
    opener.window.location.reload();
</script>
