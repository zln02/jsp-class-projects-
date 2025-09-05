<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  request.setAttribute("pageTitle","NeoShop | 홈");
  request.setAttribute("active","home");
%>
<!DOCTYPE html><html lang="ko"><head><%@ include file="WEB-INF/views/_head.jspf" %></head>
<body>
<%@ include file="WEB-INF/views/_layout.jspf" %>
<main class="container">
  <section class="hero shop-hero">
    <div>
      <h1>미니멀 & 모던 쇼핑몰</h1>
      <p>지금 가장 인기있는 아이템을 만나보세요.</p>
      <a class="btn" href="<%=request.getContextPath()%>/products.jsp">상품 보러가기</a>
    </div>
    <div class="hero-art"></div>
  </section>
  <section class="card">
    <h2>베스트 상품</h2>
    <div id="best-grid" class="grid-4"></div>
  </section>
</main>
<footer class="site-footer"><div class="container"><small>© <script>document.write(new Date().getFullYear())</script> NeoShop</small></div></footer>
</body></html>
