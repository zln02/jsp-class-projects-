<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  request.setAttribute("pageTitle","NeoShop | 상품목록");
  request.setAttribute("active","products");
%>
<!DOCTYPE html><html lang="ko"><head><%@ include file="WEB-INF/views/_head.jspf" %></head>
<body>
<%@ include file="WEB-INF/views/_layout.jspf" %>
<main class="container">
  <h1>상품목록</h1>
  <div class="filters card">
    <input id="q" placeholder="상품 검색(이름, 태그)" />
    <select id="cat">
      <option value="">전체 카테고리</option>
      <option value="의류">의류</option>
      <option value="가전">가전</option>
      <option value="액세서리">액세서리</option>
    </select>
    <select id="sort">
      <option value="popular">인기순</option>
      <option value="price_asc">가격낮은순</option>
      <option value="price_desc">가격높은순</option>
      <option value="new">신상품순</option>
    </select>
  </div>
  <div id="product-grid" class="grid-4"></div>
</main>
</body></html>
