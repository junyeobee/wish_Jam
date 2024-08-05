<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.manage.wishJam.ExampleDAO" %>
<%@ page import="com.manage.wishJam.ExampleDTO" %>

<jsp:useBean id="edao" class="com.manage.wishJam.ExampleDAO"/>
<jsp:useBean id="edto" class="com.manage.wishJam.ExampleDTO"/>
<%
    String imageSrc = "";
%>
<!DOCTYPE html>
<html>
<head>
    <title>회원등급</title>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var isEditing = false;

            // Get elements once the DOM is fully loaded
            var editButton = document.getElementById('editButton');
            var cancelButton = document.getElementById('cancelButton');
            var inputs = document.getElementsByClassName('g_point');

            function editGrade() {
                if (!isEditing) {
                    // Switch to edit mode
                    for (var i = 0; i < inputs.length; i++) {
                        inputs[i].readOnly = false;
                    }
                    editButton.value = "저장하기";
                    isEditing = true;
                } else {
                    // Switch to save mode
                    for (var i = 0; i < inputs.length; i++) {
                        inputs[i].readOnly = true;
                    }
                    editButton.value = "수정하기";
                    document.querySelector('form').submit(); // Submit the form
                    isEditing = false;
                }
            }

            function cancel() {
                if (!editButton) {
                    console.error('Edit button not found.');
                    return;
                }

                // Revert input fields to read-only
                for (var i = 0; i < inputs.length; i++) {
                    inputs[i].readOnly = true;
                }
                editButton.value = "수정하기";
                isEditing = false;
            }

            // Assign event listeners
            if (editButton) {
                editButton.addEventListener('click', editGrade);
            }
            if (cancelButton) {
                cancelButton.addEventListener('click', cancel);
            }

            // Function to handle icon editing
            window.editIcon = function () {
                window.open('gradeIcon.jsp', 'gradeIconChange', 'width=400,height=200');
            };
        });
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
                                <td><img src="/wishJam/img/profile.png" alt="defaultimg" width="50px" height="50px" onclick="editIcon();"/></td>
                                <td><input type="text" class="g_name" value="<%= dto.getG_name() %>" readonly="readonly"/></td>
                                <td><input type="text" class="g_point" value="<%= dto.getG_point() %>" readonly="readonly"/></td>
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
                            <input id="editButton" type="button" value="수정하기"/>
                            <input id="cancelButton" type="button" value="취소하기"/>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>
</body>
</html>
