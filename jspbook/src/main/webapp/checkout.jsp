<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  request.setAttribute("pageTitle","NeoShop | 주문/결제");
  request.setAttribute("active","cart");
%>
<!DOCTYPE html><html lang="ko"><head><%@ include file="WEB-INF/views/_head.jspf" %></head>
<body>
<%@ include file="WEB-INF/views/_layout.jspf" %>
<main class="container">
  <h1>주문/결제</h1>
  <div class="grid-2">
    <form class="card form" method="post" action="#">
      <h2>배송 정보</h2>
      <label>이름<input required></label>
      <label>연락처<input required></label>
      <label>주소<textarea rows="3" required></textarea></label>
      <h2>결제 수단</h2>
      <label><input type="radio" name="pay" checked> 신용/체크카드</label>
      <label><input type="radio" name="pay"> 계좌이체</label>
      <label><input type="radio" name="pay"> 간편결제</label>
      <button class="btn" type="submit" disabled>결제 (DB 연동 후)</button>
      <p class="hint">* 다음 단계에서 PG 연동/주문 저장 붙일 예정</p>
    </form>
    <div class="card">
      <h2>주문 내역</h2>
      <div id="cart-summary"></div>
    </div>
  </div>
</main>
<script>renderCart('cart-summary', true);</script>
</body></html>
