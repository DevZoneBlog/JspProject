<%@page import="board.boardDAO"%>
<%@page import="board.boardBeans"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writePro</title>
</head>
<body>
<h1>writePro</h1>
<%
    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    
    boardBeans bb = new boardBeans();
    bb.setName(name);
    bb.setPass(pass);
    bb.setTitle(title);
    bb.setContent(content);
    
    boardDAO bd = new boardDAO();
    int num = bd.indexNum(); // Get the next available index
    bb.setNum(num);
    
    bd.insertBoard(bb); // Insert the new board
    
    response.sendRedirect("main.jsp"); // Redirect to main.jsp
%>
</body>
</html>
