<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  request.setAttribute("pageTitle", "공지사항 | 동신대학교 컴퓨터공학과");
  request.setAttribute("active", "notices");
%>
<!DOCTYPE html>
<html lang="ko">
<head><%@ include file="WEB-INF/views/_head.jspf" %></head>
<body>
  <%@ include file="WEB-INF/views/_layout.jspf" %>
  <main class="container">
    <h1>공지사항</h1>
    <div class="card">
      <table class="table" id="notice-table">
        <thead><tr><th>No</th><th>제목</th><th>작성일</th><th>분류</th></tr></thead>
        <tbody></tbody>
      </table>
    </div>
  </main>
</body>
</html>
