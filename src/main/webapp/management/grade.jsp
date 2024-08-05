<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.manage.wishJam.ExampleDAO" %>
<%@ page import="com.manage.wishJam.ExampleDTO" %>

<jsp:useBean id="edao" class="com.manage.wishJam.ExampleDAO"/>
<jsp:useBean id="edto" class="com.manage.wishJam.ExampleDTO"/>

<!DOCTYPE html>
<html>
<head>
    <title>회원등급</title>
    <script>
        function editGrade() {
            var input = document.getElementById('g_point');
            input.readOnly = !input.readOnly;
            var button = document.getElementById('saveButton');
            button.style.display = input.readOnly ? 'none' : 'inline';
        }
    </script>
</head>
<body>
    <div>
        <h1>회원등급</h1>
        <form action="grade_ok.jsp" method="post">
            <table>
                <thead>
                    <tr>
                    	<th>아이콘</th>
                        <th>등급</th>
                        <th>요구포인트</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                    ArrayList<ExampleDTO> arr = edao.ex();
                    if (arr != null) {
                        for (ExampleDTO dto : arr) {
                            %>
                            <tr>
                            	<td><input type="image" value=""/></td>
                                <td><input type="text" id="g_name" value="<%= dto.getG_name() %>" readonly = "readonly"/></td>
                                <td><input type="text" id="g_point" value="<%= dto.getG_point() %>" name="g_point" readonly="readonly"/></td>
                            </tr>
                            <% 
                        }
                    } else { 
                        %>
                        <tr>
                            <td colspan="3"><label>등급을 설정해주세요</label></td>
                        </tr>
                        <% 
                    } 
                    %>
                    <tr>
                        <td colspan="3">
                            <input type="button" value="수정하기" onclick="editGrade();"/>
                            <input type="button" id="saveButton" value="저장하기" onclick="submit();" style="display: none;"/>
                            <input type="button" value="취소하기"/>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>
</body>
</html>
