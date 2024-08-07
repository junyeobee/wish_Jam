<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "com.manage.wishJam.MemberExDTO" %>
<%@ page import = "com.manage.wishJam.MemberExDAO" %>
<%
	
%>

<div>
	<h1>회원 관리</h1>
</div>
<div>
	<table>
		<thead>
			<tr>
				<th>회원번호</th>
				<th>닉네임</th>
				<th>등급</th>
				<th>아이디</th>
				<th>패스워드</th>
				<th>이름</th>
				<th>번호</th>
				<th>주소</th>
				<th>이메일</th>
				<th>보유포인트</th>
			</tr>
		</thead>
		<tbody>
			<%
				MemberExDAO a = new MemberExDAO();
				ArrayList<MemberExDTO> arr = a.allMem();
				if(arr!=null){
					for(MemberExDTO dto : arr){
					%>
						<tr>
							<td><%=dto.getM_idx() %></td>
							<td><%=dto.getM_nick() %></td>
							<td><%=dto.getG_name() %></td>
							<td><%=dto.getM_id() %></td>
							<td><%=dto.getM_pwd() %></td>
							<td><%=dto.getM_name() %></td>
							<td><%=dto.getM_tel() %>6</td>
							<td><%=dto.getM_addr() %>7</td>
							<td><%=dto.getM_email() %>8</td>
							<td><%=dto.getM_point() %>9</td>
						</tr>
					<%
					}
				}else {
					%>
						<tr>
							<td colspan="10">없음</td>
						</tr>
					<%
				}
			%>
		</tbody>
	</table>
</div>