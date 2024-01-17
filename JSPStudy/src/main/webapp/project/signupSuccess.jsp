<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록 성공</title>
<style>
  * {
    box-sizing: border-box;
    border-radius: 5px;
  }

  body {
    margin: 0;
    background-color: white;
    text-align: center;
  }

  .success-message {
    width: 300px;
    background-color: #EEEFF1;
    margin-right: auto;
    margin-left: auto;
    margin-top: 50px;
    padding: 20px;
    border: none;
  }

  .success-message p {
    font-size: 16px;
    margin-bottom: 20px;
  }

  .success-message .button-container {
    margin-top: 30px;
  }

  .success-message .button-container button {
    font-size: 16px;
    border: none;
    padding: 12px 24px;
    background-color: gray;
    color: white;
    cursor: pointer;
    transition: background-color 0.3s;
  }

  .success-message .button-container button:hover {
    background-color: #555;
  }
</style>
</head>
<body>
  <div class="success-message">
    <p>회원가입이 완료되었습니다.</p>
    <div class="button-container">
      <button onclick="location.href='login.jsp'">로그인 페이지로 이동</button>
    </div>
  </div>
</body>
</html>
