<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<%
  String u_id = request.getParameter("id"); // 로그인 폼에서 입력한 아이디 정보 가져오기
  String u_pw = request.getParameter("password"); // 로그인 폼에서 입력한 비밀번호 정보 가져오기

  String sql = "SELECT * FROM members WHERE id = ? AND passwd = ?";
  PreparedStatement pstmt = conn.prepareStatement(sql);
  pstmt.setString(1, u_id);
  pstmt.setString(2, u_pw);
  
  ResultSet rs = pstmt.executeQuery();

  if (rs.next()) {
    session.setAttribute("memberID", u_id); // 세션에 사용자 아이디 저장
    response.sendRedirect("testv1.jsp"); // testv1.jsp로 이동
  } else {
    response.sendRedirect("login.jsp"); // 로그인 실패 시 다시 login.jsp로 이동
  }

  rs.close();
  pstmt.close();
  conn.close();
%>

