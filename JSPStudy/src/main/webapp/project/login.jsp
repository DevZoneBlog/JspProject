<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인이 필요합니다</title>
<link rel="stylesheet" href="css/style2.css">
</head>
<body>
  <div class="login-form">
    <form action="loginProcess.jsp" method="POST"> <!-- 로그인 정보를 처리할 loginProcess.jsp로 form 전송 -->
      <input type="text" name="id" class="text-field" placeholder="아이디">
      <input type="password" name="password" class="text-field" placeholder="비밀번호">
      <input type="submit" value="로그인" class="submit-btn">
    </form>

    <div class="links">
      <a href="signup.jsp">회원가입</a>
    </div>
  </div>

<%
  // 로그인이 성공한 경우 세션에 사용자 ID 저장
  String userID = (String) session.getAttribute("memberID");
  if (userID != null) {
    response.sendRedirect("write.jsp"); // write.jsp로 이동
  }
%>

</body>
</html>
