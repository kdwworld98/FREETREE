<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
      <meta charset="UTF-8">
    <title>개인 회원가입 완료</title>
    <style>
      .container{
        border: 1px solid black;
        justify-content: center;
        align-items: center;
        width: 350px;
        height: 400px;
        margin: 300px auto;
        border-radius: 10px;
      }

      #body{
        margin-top: 80px;
      }

      p{
        text-align: center;
        margin: 3px;
      }

      #btn{
        display: flex;
        justify-content: center;
        margin: 50px auto;
        background-color: #1DB088;
        color: white;
        border: 1px solid white;
        border-radius: 5px;
        padding: 10px 70px;
        font-size: 15px;
        cursor: pointer;
      }

      #btn:hover {
        background-color: #0F8856;
      }

      #img {
        display: block;
        margin: auto;
        padding-top: 20px;
      }
    </style>
    <script>

      function goMain() {
        location.href="/loginform1";
      }
    </script>
  </head>

<body>
  <div class="container">
    <img src="/img/account/insertsuccess.png" id="img">
    <div id="body">
<%
  Object obj = request.getAttribute("memail");
%>
      <p><span id="memail"><%=obj%></span></p>
      <p> 회원가입이 완료되었습니다.</p>
      <button type="submit" id="btn" onclick="goMain()">로그인</button>
    </div>
  </div>
</body>
</html>