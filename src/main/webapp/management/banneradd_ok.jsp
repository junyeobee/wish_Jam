<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.manage.wishJam.MyFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<jsp:useBean id="mdao" class="com.manage.wishJam.manageDAO" scope="session"/>

<%
    // 서버의 실제 경로를 얻어옵니다.
    String path = request.getRealPath("/");
    mdao.setHomePath(path);
    String savepath = mdao.getHomePath() + mdao.getBanner();

    // b_name 값을 가져옵니다.
    MultipartRequest tempMr = new MultipartRequest(request, savepath, 10 * 1024 * 1024, "UTF-8");
    String bannerName = tempMr.getParameter("b_name");

    // MyFileRenamePolicy 객체를 생성할 때 b_name을 전달합니다.
    MyFileRenamePolicy renamePolicy = new MyFileRenamePolicy(bannerName);

    // 실제로는 MultipartRequest를 다시 생성하고, renamePolicy를 적용합니다.
    MultipartRequest mr = new MultipartRequest(request, savepath, 10 * 1024 * 1024, "UTF-8", renamePolicy);

    // 파일 업로드 성공 로그
    System.out.println("배너 이름: " + bannerName);
%>
<script>
    window.alert('파일 올리기 성공!');
    window.self.close();
    opener.window.location.reload();
</script>