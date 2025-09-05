<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  request.setAttribute("pageTitle","Elegance | Collection");
  request.setAttribute("active","products");
%>
<!DOCTYPE html>
<html lang="ko">
<head><%@ include file="WEB-INF/views/_head.jspf" %></head>
<body>
  <%@ include file="WEB-INF/views/_layout.jspf" %>
  <main style="max-width:1200px;margin:auto;padding:2rem;">
    <h1>Collection</h1>
    <div class="products-grid" id="product-grid">
      <div class="product-card">
        <div class="product-img">👔</div>
        <div class="product-name">Classic Black Suit</div>
        <div class="product-price">₩980,000</div>
        <button class="btn add-btn">Add to Cart</button>
      </div>
      <div class="product-card">
        <div class="product-img">🤵</div>
        <div class="product-name">Formal Tuxedo</div>
        <div class="product-price">₩1,450,000</div>
        <button class="btn add-btn">Add to Cart</button>
      </div>
    </div>
  </main>
  <footer class="footer">ELEGANCE Collection</footer>
</body>
</html>
