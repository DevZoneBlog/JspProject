<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 화면</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div class="nav">
    <div class="logo">
      <img src="images/logo.png"pngalt="#">
    </div>
    <div class="nav_but">
      <a href="testv1.jsp">HOME</a>
      <a href="list.jsp">호텔 리스트</a>
      <a href="report.jsp">페이지 소개</a>
      <a href="main.jsp">자유게시판</a>
      <%-- 로그인/로그아웃 버튼 및 사용자 아이디 출력 --%>
      <%
        String username = (String) session.getAttribute("memberID"); 
        if (username != null) {
      %>
      <a href="logout.jsp">로그아웃</a>
      <span><%= username %> 님</span>
      <% } else { %>
      <a href="login.jsp">로그인</a>
      <% } %>
    </div>
  </div>
  
  <section class="header">
    <div class="title">
      <img src="images/logo1.png" alt="">
      <h1>서울의 호텔을 소개합니다</h1>
      <br>
      <p>평점과 평균가격을 종합해 호텔을 추천합니다</p>
      <button onclick="location.href='list.jsp'">이동하기</button>
    </div>
  </section>

  <footer>
    <div class="container">
      <div class="left">
        <h1>안양대학교</h1>
        <h1> 웹&앱 응용 </h1>
        <p>http://www.anyang.ac.kr</p>

      </div>
      <div class="right">
        <div class="list">
          <h2>만든사람</h2>
          <ul>
            <li>2017E7302 공병열</li>
          

          </ul>
        </div>
        <div class="list">
          <h2>오시는 길</h2>
          <ul>
            <li>경기도 안양시 만안구 삼덕로 37번길 22
            <br>안양대학교 안양캠퍼스 아리관 601호</li>

          </ul>
        </div>
      </div>
    </div>

  </footer>
</body>
</html>