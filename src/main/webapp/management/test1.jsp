<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String name = "ㅎㅇ";
%>
<section>
	<label><%=name %>요</label>
	<a onclick = 'move();'>dd</a>
	
</section>
<script>
	function move(){
		window.open('/wishJam/index.jsp','_parent');
	}
</script>