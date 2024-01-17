<%@page import="board.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<link rel="stylesheet" href="css/style3.css">
<style>
    .main-link {
        position: fixed;
        top: 20px;
        right: 20px;
        padding: 10px 20px;
        background-color: #f2f2f2;
        color: #333;
        font-weight: bold;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    .main-link:hover {
        background-color: #ddd;
    }	
</style>
</head>
<body>
<h1>main</h1>
<%
boardDAO bd = new boardDAO();
%>
<table border="1">
<tr><th>글번호</th><th>글제목</th><th>작성자</th></tr>
<%out.print(bd.makeList()); %>
</table>
<button onclick="location.href='writeForm.jsp'">글쓰기</button>

<a href="testv1.jsp" class="main-link">호텔 소개 페이지로 돌아가기</a>	

</body>
</html>