<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  request.setAttribute("pageTitle","Elegance | Home");
  request.setAttribute("active","home");
%>
<!DOCTYPE html>
<html lang="ko">
<head><%@ include file="WEB-INF/views/_head.jspf" %></head>
<body>
  <%@ include file="WEB-INF/views/_layout.jspf" %>
  <main>
    <section class="hero">
      <h1>Modern Suit House</h1>
      <p>아이보리·블랙·그레이 모노톤으로 완성하는 미니멀 쇼핑 경험</p>
      <div class="btns">
        <a class="btn-accent" href="<%=request.getContextPath()%>/products.jsp">Shop Now</a>
        <a class="btn" href="<%=request.getContextPath()%>/about.jsp">Our Story</a>
      </div>
    </section>
  </main>
  <footer class="footer">© <script>document.write(new Date().getFullYear())</script> ELEGANCE</footer>
</body>
</html>
