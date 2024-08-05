<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id = "edao" class = "com.manage.wishJam.ExampleDAO"/>
<%
	String a = request.getParameter("g_point");
	System.out.println(a);
	String msg = "실패";
	
	if(a!=null) {
		int num = Integer.parseInt(a);
		int result = edao.gradeEdit(num);
		msg = result>0?"저장완료":"실패";	
	}
%>
<script>
	window.alert('<%=msg %>');
	window.location='grade.jsp';
</script>