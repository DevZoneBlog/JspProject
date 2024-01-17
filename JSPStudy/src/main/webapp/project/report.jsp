<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔 소개</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div class="nav">
    <div class="logo">
    <a href="testv1.html"><img src="images/logo.png" alt="#"></a>
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
  <section class="serv_list">
    <div class="container">
      <div class="title">
          <h1 class="h2_size"> 웹 페이지를 소개합니다 </h1>
          <ul>
            <li><a href=""></a></li>
            <li><a href=""></a></li>
            <li><a href=""></a></li>
            <li><a href=""></a></li>
          </ul>
       </div>
<div class="intro">
  <div class="box_text">
    <div class="titlepage">
      <h2> 홈페이지 소개란 </h2>
    </div>
        <p>본 홈페이지는 간단한 호텔의 정보들을 알려주는 사이트이며
        	데이터베이스와 회원정보 등을 연동해 로그인 기능을 구축하고
        	자유게시판 기능까지 만들어 회원과 소통할 수 있게 만들어본 홈페이지입니다. </p>
        <a href="testv1.jsp">홈으로 이동</a>
  </div>
</div>
<div class="upcomimg">
   <figure><img src="images/6.jpg" style="display: block; width:600px; height:600px;" alt="#"/></figure>
</div>


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