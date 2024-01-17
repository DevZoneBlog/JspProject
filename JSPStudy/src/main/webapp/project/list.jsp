<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
  <link rel="stylesheet" href="css/style4.css">
</head>
<body>
  <div class="nav">
    <div class="logo">
    <a href="testv1.html"><img src="images/logo.png"  alt="#"></a>
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
        <h1>서울 내 인기 호텔 top 15</h1>
        <ul>
          <li><a href=""></a></li>
          <li><a href=""></a></li>
          <li><a href=""></a></li>
          <li><a href=""></a></li>
        </ul>
     </div>
     <div class="item_list">
       <div class="card">
         <div class="img">
           <img src="./images/0.jpg" alt="">
         </div>
         <div class="text">
           <h2>나인트리 인사동</h2>
           <p>평균가 &#8361;89,964원
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             &#9733;평점 4.5</p>
           <button type="button" onclick="window.open('https://www.ninetreehotels.com/nth3/');" >
             <i class="fas fa-check">이동하기</i></button>
         </div>
       </div>
     </div>

     <div class="item_list">
       <div class="card">
         <div class="img">
           <img src="./images/1.jpg" alt="">
         </div>
         <div class="text">
           <h2>신라호텔 서울</h2>
           <p>평균가 &#8361;385,000원
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             &#9733;평점 4.2</p>
             <button type="button" onclick="window.open('https://www.shilla.net/seoul/index.do');" >
               <i class="fas fa-check">이동하기</i></button>
         </div>
       </div>
     </div>

     <div class="item_list">
       <div class="card">
         <div class="img">
           <img src="./images/2.jpg" alt="">
         </div>
         <div class="text">
           <h2>노보텔 엠베서더 용산</h2>
           <p>평균가 &#8361;145,000원
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             &#9733;평점 4.4</p>
             <button type="button" onclick="window.open('https://www.ambatel.com/novotel/yongsan/ko/main.do');" >
               <i class="fas fa-check">이동하기</i></button>
         </div>
       </div>
     </div>

     <div class="item_list">
       <div class="card">
         <div class="img">
           <img src="./images/3.jpg" alt="">
         </div>
         <div class="text">
           <h2>밀레니엄 힐튼 서울 </h2>
           <p>평균가 &#8361;267,411원
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             &#9733;평점 4.4</p>
             <button type="button" onclick="window.open('https://hilton.co.kr/hotel/seoul/millennium-hilton-seoul');" >
               <i class="fas fa-check">이동하기</i></button>
         </div>
       </div>
     </div>

     <div class="item_list">
       <div class="card">
         <div class="img">
           <img src="./images/4.jpg" alt="">
         </div>
         <div class="text">
           <h2>콘래드 여의도</h2>
           <p>평균가 &#8361;297,000원
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             &#9733;평점 4.4</p>
             <button type="button" onclick="window.open('http://www.conradseoul.co.kr/');" >
               <i class="fas fa-check">이동하기</i></button>
         </div>
       </div>
     </div>

     <div class="item_list">
       <div class="card">
         <div class="img">
           <img src="./images/5.jpg" alt="">
         </div>
         <div class="text">
           <h2>파크 하얏트 서울</h2>
           <p>평균가 &#8361;550,000원
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             &#9733;평점 4.4</p>
             <button type="button" onclick="window.open('https://www.hyatt.com/ko-KR/hotel/south-korea/park-hyatt-seoul/selph');" >
               <i class="fas fa-check">이동하기</i></button>
         </div>
       </div>
     </div>

     <div class="item_list">
       <div class="card">
         <div class="img">
           <img src="./images/6.jpg" alt="">
         </div>
         <div class="text">
           <h2>롯데 호텔 서울</h2>
           <p>평균가 &#8361;254,470원
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             &#9733;평점 4.5</p>
             <button type="button" onclick="window.open('https://www.lottehotel.com/seoul-hotel/ko.html');" >
               <i class="fas fa-check">이동하기</i></button>
         </div>
       </div>
     </div>

     <div class="item_list">
       <div class="card">
         <div class="img">
           <img src="./images/7.jpg" alt="">
         </div>
         <div class="text">
           <h2>포시즌스 서울</h2>
           <p>평균가 &#8361;475,200원
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             &#9733;평점 4.5</p>
             <button type="button" onclick="window.open('https://www.fourseasons.com/kr/seoul/');" >
               <i class="fas fa-check">이동하기</i></button>
         </div>
       </div>
     </div>

     <div class="item_list">
       <div class="card">
         <div class="img">
           <img src="./images/8.jpg" alt="">
         </div>
         <div class="text">
           <h2>신라 스테이 광화문</h2>
           <p>평균가 &#8361;103,224원
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             &#9733;평점 4.1</p>
             <button type="button" onclick="window.open('https://www.shillastay.com/gwanghwamun/index.do');" >
               <i class="fas fa-check">이동하기</i></button>
         </div>
       </div>
     </div>

     <div class="item_list">
       <div class="card">
         <div class="img">
           <img src="./images/9.png" alt="">
         </div>
         <div class="text">
           <h2>웨스틴 조선 서울</h2>
           <p>평균가 &#8361;304,920원
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             &#9733;평점 4.5</p>
             <button type="button" onclick="window.open('https://www.josunhotel.com/hotel/westinSeoul.do');" >
               <i class="fas fa-check">이동하기</i></button>
         </div>
       </div>
     </div>


     <div class="item_list">
       <div class="card">
         <div class="img">
           <img src="./images/10.png" alt="">
         </div>
         <div class="text">
           <h2>jw 메리어트 서울</h2>
           <p>평균가 &#8361;363,000원
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             &#9733;평점 4.3</p>
             <button type="button" onclick="window.open('https://www.marriott.co.kr/hotels/travel/seljw-jw-marriott-hotel-seoul/');" >
               <i class="fas fa-check">이동하기</i></button>
         </div>
       </div>
     </div>

     <div class="item_list">
       <div class="card">
         <div class="img">
           <img src="./images/11.png" alt="">
         </div>
         <div class="text">
           <h2>몬드리안 이태원</h2>
           <p>평균가 &#8361;201,043원
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             &#9733;평점 4.4</p>
             <button type="button" onclick="window.open('https://ko.sbe.com/hotels/mondrian/seoul');" >
               <i class="fas fa-check">이동하기</i></button>
         </div>
       </div>
     </div>

     <div class="item_list">
       <div class="card">
         <div class="img">
           <img src="./images/12.png" alt="">
         </div>
         <div class="text">
           <h2>쉐라톤 명동</h2>
           <p>평균가 &#8361;96,800원
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             &#9733;평점 4.5</p>
             <button type="button" onclick="window.open('https://www.josunhotel.com/hotel/fpbsMyeongdong.do');" >
               <i class="fas fa-check">이동하기</i></button>
         </div>
       </div>
     </div>

     <div class="item_list">
       <div class="card">
         <div class="img">
           <img src="./images/13.png" alt="">
         </div>
         <div class="text">
           <h2>그랜드 머큐어 서울</h2>
           <p>평균가 &#8361;262,350원
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             &#9733;평점 4.6</p>
             <button type="button" onclick="window.open('https://sdc-club.com/ko/index.php');" >
               <i class="fas fa-check">이동하기</i></button>
         </div>
       </div>
     </div>

     <div class="item_list">
       <div class="card">
         <div class="img">
           <img src="./images/14.png" alt="">
         </div>
         <div class="text">
           <h2>그랜드 하얏트 서울</h2>
           <p>평균가 &#8361;326,700원
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             &#9733;평점 4.4</p>
             <button type="button" onclick="window.open('https://www.hyatt.com/ko-KR/hotel/south-korea/grand-hyatt-seoul/selrs?src=prop_misc_selrs_other_naver');" >
               <i class="fas fa-check">이동하기</i></button>
         </div>
       </div>
     </div>


   </div>
</section>

</body>
</html>
