<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style>
    body {
        margin: 0;
        padding: 0;
        display: flex;
    }
    #manageNavbar {
        width: 200px;
        height: 100vh;
        background-color: #212121;
        color: white;
        padding: 10px;
    }
    #manageArea {
        flex: 1;
        padding: 10px;
        background-color: #f4f4f4;
    }
    .element {
        margin-bottom: 10px;
    }
    #manageimg {
        height: 150px;
        width: 150px;
        border-radius: 50px;
        background-color: white;
        text-align: center;
    }
    .pfimg {
        height: 100px;
        width: 100px;
        border-radius: 50px;
        object-fit: cover;
        border-radius: 50px;
    }
    li {
        list-style: none;
    }
    #manageTop ul {
        padding: 0;
    }
    #manageTop li {
        margin-bottom: 5px;
    }
    #manageTop a {
        text-decoration: none;
        color: black;
    }
    #manageTop a.active {
        font-weight: bold;
    }
</style>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const manageArea = document.getElementById('manageArea');
            const links = document.querySelectorAll('#manageNavbar a');

            // 링크 클릭 시 콘텐츠 업데이트 함수
            function updateContent(content) {
                const contentMapping = {
                    'test1': 'ㅅㄷㄴㅅ123123',
                    'test2': 'test2',
                    'test3': 'test3',
                    'test4': 'test4',
                    'test5': 'test5',
                    'test6': 'test6',
                    'menu1': 'menu1',
                    'menu2': 'menu2',
                    'menu3': 'menu3'
                };
                manageArea.querySelector('#d2').innerHTML = contentMapping[content] || '<h1>ㅇㅇ</h1>';
            }

            // 링크 클릭 이벤트 처리
            links.forEach(link => {
                link.addEventListener('click', (e) => {
                    e.preventDefault();
                    const contentId = e.target.getAttribute('data-content');
                    updateContent(contentId);

                    // 네비게이션 링크 활성화 처리
                    links.forEach(link => link.classList.remove('active'));
                    e.target.classList.add('active');
                });
            });

            // 페이지 로드 시 기본 콘텐츠 설정
            updateContent('test1');
        });
    </script>
</head>
<body>    
    <div id="manageNavbar">
        <div>
            <a href="/wishJam/index.jsp">메인로고</a>
        </div>
        <div id="manageimg">
            <img src="/wishJam/img/bonobono.jpg" class="pfimg" alt="관리자 이미지">
            <div>관리자 이름 님</div>
        </div>
        <div class="element">
            <a href="#" data-content="test1">상품관리</a>
        </div>
        <div class="element">
            <a href="#" data-content="test2">회원설정</a>
        </div>
        <div class="element">
            <a href="#" data-content="test3">키워드 관리</a>
        </div>
        <div class="element">
            <a href="#" data-content="test4">공지사항 등록</a>
        </div>
        <div class="element">
            <a href="#" data-content="test5">배너 관리</a>
        </div>
        <div class="element">
            <a href="#" data-content="test6">등급 설정</a>
        </div>
    </div>
    <section id="manageArea">
        <div id="manageTop">
            <ul>
                <li><a href="#" data-content="menu1">menu1</a></li>
                <li><a href="#" data-content="menu2">menu2</a></li>
                <li><a href="#" data-content="menu3">menu3</a></li>
            </ul>
        </div>
        <hr />
        <div id="dd"><h1>관리자 페이지</h1></div>
        <div id="d2">contentArea</div>
    </section>
</body>
</html>