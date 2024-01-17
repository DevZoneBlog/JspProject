<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<style>
  * {
    box-sizing: border-box;
    border-radius: 5px;
  }

  body {
    margin: 0;
    background-color: white;
  }

  .signup-form {
    width: 300px;
    background-color: #EEEFF1;
    margin-right: auto;
    margin-left: auto;
    margin-top: 50px;
    padding: 20px;
    text-align: center;
    border: none;
  }

  .text-field {
    font-size: 14px;
    padding: 10px;
    border: none;
    width: 260px;
    margin-bottom: 10px;
  }

  .submit-btn {
    font-size: 14px;
    border: none;
    padding: 10px;
    width: 260px;
    background-color: gray;
    margin-bottom: 30px;
    color: white;
  }

  .links {
    text-align: center;
  }

  .links a {
    font-size: 12px;
    color: #9B9B9B;
  }
</style>

<script type="text/javascript">
  function checkFun() {
    var f = document.user_info;
    if (f.userID.value.length < 2 || f.userID.value.length > 16) {
      alert("아이디는 2~16자 이내로 입력해야 합니다.");
      f.userID.focus();
      return false;
    } else if (f.userPW.value.length < 6) {
      alert("비밀번호는 6자 이상으로 입력해야 합니다.");
      f.userPW.focus();
      return false;
    } else if (f.userMAIL.value == "") {
      alert("이메일 주소는 반드시 입력해야 합니다.");
      f.userMAIL.focus();
      return false;
    } else {
      return true;
    }
  }
</script>
</head>
<body>
  <div class="signup-form">
    <form action="insertDB.jsp" name="user_info" method="post" onsubmit="return checkFun()">
      <input type="text" size="16" name="userID" class="text-field" placeholder="아이디"><br><br>
      <input type="password" size="16" name="userPW" class="text-field" placeholder="비밀번호"><br><br>
      <input type="email" size="30" name="userMAIL" class="text-field" placeholder="이메일"><br>
      <hr>
      <input type="reset" value="다시작성" class="submit-btn">
      <input type="submit" value="가입하기" class="submit-btn">
      <br><br>
    </form>
    <div class="links">
      <a href="#">로그인</a>
    </div>
  </div>
</body>
</html>





















