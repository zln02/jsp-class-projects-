<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  request.setAttribute("pageTitle","NeoShop | 상품상세");
  request.setAttribute("active","products");
%>
<!DOCTYPE html><html lang="ko"><head><%@ include file="WEB-INF/views/_head.jspf" %></head>
<body>
<%@ include file="WEB-INF/views/_layout.jspf" %>
<main class="container">
  <div id="product-detail" class="product-detail"></div>
</main>
</body></html>
