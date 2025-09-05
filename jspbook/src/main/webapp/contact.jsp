<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  request.setAttribute("pageTitle", "문의 | 동신대학교 컴퓨터공학과");
  request.setAttribute("active", "contact");
%>
<!DOCTYPE html>
<html lang="ko">
<head><%@ include file="WEB-INF/views/_head.jspf" %></head>
<body>
  <%@ include file="WEB-INF/views/_layout.jspf" %>
  <main class="container">
    <h1>학과 문의</h1>
    <div class="grid-2">
      <form class="card form" method="post" action="#">
        <label>이름<input name="name" required></label>
        <label>이메일<input type="email" name="email" required></label>
        <label>내용<textarea name="message" rows="6" required></textarea></label>
        <button class="btn" type="submit" disabled>제출(추후 DB 연동)</button>
        <p class="hint">* 나중에 서블릿/DB/JPA 연동 후 활성화 예정</p>
      </form>
      <div class="card">
        <h2>학과 정보</h2>
        <ul class="bullets">
          <li>학교: 동신대학교</li>
          <li>학과: 컴퓨터공학과</li>
          <li>위치: (캠퍼스/건물/호수 기입)</li>
          <li>이메일: cse@dsu.ac.kr (예시)</li>
          <li>전화: 061-XXX-XXXX (예시)</li>
        </ul>
        <div class="map-placeholder">지도(추후 실제 지도/이미지 삽입)</div>
      </div>
    </div>
  </main>
</body>
</html>
