<%@page import="board.boardDAO"%>
<%@page import="board.boardBeans"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>readForm</title>
<link rel="stylesheet" href="css/style3.css">
</head>
<body>
<h1>readForm</h1>
<%
	boardDAO bd = new boardDAO();
	boardBeans bb = bd.readContent(Integer.parseInt(request.getParameter("num")));
	

%>
<table border="1">
<tr><th>글제목</th><td><%=bb.getTitle()%></td></tr>
<tr><th>작성자</th><td><%=bb.getName()%></td></tr>
<tr><th>글내용</th><td><%=bb.getContent()%></td></tr>
</table>
<button onclick="location.href='main.jsp'">글목록</button>
<button onclick="location.href='updateForm.jsp'">글수정</button>
<button onclick="location.href='deleteForm.jsp'">글삭제</button>

</body>
</html>