<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  request.setAttribute("pageTitle","NeoShop | 장바구니");
  request.setAttribute("active","cart");

  // 세션 장바구니: Map<Integer, Integer> (productId -> qty)
  java.util.Map cart = (java.util.Map)session.getAttribute("cart");
  if(cart==null){ cart = new java.util.HashMap(); session.setAttribute("cart", cart); }
%>
<!DOCTYPE html><html lang="ko"><head><%@ include file="WEB-INF/views/_head.jspf" %></head>
<body>
<%@ include file="WEB-INF/views/_layout.jspf" %>
<main class="container">
  <h1>장바구니</h1>
  <div id="cart-view" class="card"></div>
  <div class="cart-actions">
    <a class="btn" href="<%=request.getContextPath()%>/products.jsp">계속 쇼핑하기</a>
    <a class="btn accent" href="<%=request.getContextPath()%>/checkout.jsp">주문하기</a>
  </div>
</main>
<script>
  renderCart('cart-view'); // app.js 내 함수
</script>
</body></html>
