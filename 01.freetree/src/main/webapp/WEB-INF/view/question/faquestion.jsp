<%@ page import="wearethe.freetree.util.K_Session" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <!-- Google Material Icons 라이브러리 로드 -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link href="/css/question/faquestion.css" type="text/css" rel="stylesheet">
  <script src="/js/question/faquestion.js"></script>
  <script>
    $(function() {
      $.ajax({
        url: "/header", // 헤더를 반환하는 엔드포인트
        success: function(data) {
          $("#header").html(data);
        }
      });
      $.ajax({
        url: "/footer", // 푸터를 반환하는 엔드포인트
        success: function(data) {
          $("#footer").html(data);
        }
      });
      $(document).on("click", "#qna", function(){

        $('#usergo').attr({
          'action':'/questionForm',
          'method':'POST',
          'enctype':'application/x-www-form-urlencoded'
        }).submit();
      });
    });
  </script>

</head>
<body>
<header id="header"></header>
<%
  K_Session ks = K_Session.getInstance();
  String userId = ks.getSession(request);

  System.out.println("세션 가져오기" + userId);
%>
<form id="usergo">
  <input type="hidden" name="userId" value="<%= userId %>">
</form>
<section class="py-60">
  <div class="container text-control-1">
    <h1>FAQ</h1>
    <h2>(Frequent ask questions)</h2>
    <button type="button" id="qna">Q&A 등록</button>
    <div class="faqs-section">
      <div class="faq accordion">
        <div class="question-wrapper">
          <div class="divm">
            <span class="q-mark">공통</span>
            <p class="question" title="">프리트리의 프로젝트 매칭 프로세스가 궁금합니다.</p>
          </div>
          <i class="material-icons drop">expand_more</i>
        </div>
        <div class="answer-wrapper">
          <p class="answer">1. 프리랜서가 참여하고 싶은 프로젝트에 '지원'버튼을 통해 이력서를 제출합니다.<br>2. 프로젝트 사업자가 이력서를 보고 '승인' 또는 '거절'버튼을 통해 상태를 변경합니다.<br>3. 승인 후 프리랜서와 사업자가 근로 계약을 진행하고, 계약에 성공하면 프로젝트 지원자에서 프로젝트 참여자 탭으로 이동합니다.  </p>
        </div>
      </div>
      <div class="faq accordion">
        <div class="question-wrapper">
          <div class="divm">
            <span class="q-mark">공통</span>
            <p class="question" title="">프리트리는 어떤 서비스를 제공하나요?</p></span>
          </div>
          <i class="material-icons drop">expand_more</i>
        </div>
        <div class="answer-wrapper">
          <p class="answer">프리트리는 사업자 회원에게 프로젝트 등록, 지원자 관리를, 개인 회원에게는 프리랜서 등록, 이력서 관리를 제공하며<br>공통적으로 실시간 채팅창에서 채팅을 할 수 있고, 원하는 사람과의 채팅도 가능합니다. 매칭 시 실시간 채널이 생겨<br>프로젝트 간 채팅이 가능합니다.</p>
        </div>
      </div>
      <div class="faq accordion">
        <div class="question-wrapper">
          <div class="divm">
            <span class="q-mark">결제</span>
            <p class="question" title="">수수료는 어떤 방법으로 결제하나요?</p>
          </div>
          <i class="material-icons drop">expand_more</i>
        </div>
        <div class="answer-wrapper">
          <p class="answer">토스 결제 위젯을 통해 토스페이와 카드결제 등으로 수수료를 결제할 수 있습니다.<br>수수료는 프로젝트를 등록한 사업자가 프로젝트 금액의 10%를 사업자에게, 개인에게 2.5%를 뗀 후 <br>프로젝트가 종료될 때 사업자에게 2.5%를 환급, 개인에게 2.5%를 환급 해줍니다.</p>
        </div>
      </div>
      <div class="faq accordion">
        <div class="question-wrapper">
          <div class="divm">
            <span class="q-mark">결제</span>
            <p class="question" title="">대금 결제는 언제, 어떻게 해야하나요?</p>
          </div>
          <i class="material-icons drop">expand_more</i>
        </div>
        <div class="answer-wrapper">
          <p class="answer">대금 결제는 계약 체결 시 클라이언트가 프리트리에 예치한 대금을 프로젝트가 끝날 때까지 안전하게 보호하며,<br>완료 후 파트너에게 대금을 지급합니다. 또는 한 달에 한 번씩 한 달 수행을 잘 끝냈을 시 파트너에게 대금을 지급합니다.</p>
        </div>
      </div>
      <div class="faq accordion">
        <div class="question-wrapper">
          <div class="divm">
            <span class="q-mark">기타</span>
            <p class="question" title="">프리랜서에게 연락을 하고 싶어요. 어떻게 할 수 있나요?</p>
          </div>
          <i class="material-icons drop">expand_more</i>
        </div>
        <div class="answer-wrapper">
          <p class="answer">프리트리의 실시간 채팅 서비스를 이용해 프리랜서 개인에게,<br> 프로젝트가 매칭이되면 프로젝트 참여자에게,<br> 모두에게 세 가지 채널이 제공되며 채팅으로 연락을 할 수 있습니다.</p>
        </div>
      </div>
      <div class="faq accordion">
        <div class="question-wrapper">
          <div class="divm">
            <span class="q-mark">기타</span>
            <p class="question" title="">지원자 모집 중인 프로젝트의 금액/기간/내용을 수정하고 싶어요.</p>
          </div>
          <i class="material-icons drop">expand_more</i>
        </div>
        <div class="answer-wrapper">
          <p class="answer">담당 매니저에게 연락해주시거나, 사이트 우측 하단의 ‘채팅 문의’에 말씀해주세요.<br> 내용 수정으로 인해 금액이나 기간, 업무범위 등이 달라져 지원자가 다르게 발생할 수 있을 경우,<br> 프로젝트 재등록이 필요하니 참고해주세요.</p>
        </div>
      </div>
    </div>
  </div>
</section>
<footer id="footer"></footer>
</body>
</html>