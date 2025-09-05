<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  request.setAttribute("pageTitle", "홈 | 동신대학교 컴퓨터공학과");
  request.setAttribute("active", "home");
%>
<!DOCTYPE html>
<html lang="ko">
<head><%@ include file="WEB-INF/views/_head.jspf" %></head>
<body>
  <%@ include file="WEB-INF/views/_layout.jspf" %>

  <main class="container">
    <section class="hero">
      <h1>컴퓨터공학과</h1>
      <p>AI · 소프트웨어 · 임베디드 · 데이터베이스 중심의 실무형 인재 양성</p>
      <a class="btn" href="<%=request.getContextPath()%>/notices.jsp">학사 공지 보기</a>
    </section>

    <section class="grid-2">
      <div class="card">
        <h2>학과 소개</h2>
        <p>동신대학교 컴퓨터공학과는 소프트웨어 개발 역량과 문제 해결 능력을 갖춘 엔지니어를 양성합니다. 캡스톤디자인, 산학협력 프로젝트, 글로벌 프로그램을 통해 산업 현장과 연결된 교육을 제공합니다.</p>
      </div>
      <div class="card">
        <h2>교육과정(요약)</h2>
        <ul class="bullets">
          <li>프로그래밍/자료구조/운영체제/네트워크</li>
          <li>데이터베이스 · 웹/모바일 · 클라우드</li>
          <li>인공지능/머신러닝 · 컴퓨터비전 · 빅데이터</li>
          <li>임베디드 · IoT · 자율주행 라인트레이서</li>
        </ul>
      </div>
    </section>

    <section class="card">
      <h2>주요 진로</h2>
      <div class="chips">
        <span>백엔드 개발자</span><span>프론트엔드</span><span>풀스택</span>
        <span>데이터 엔지니어</span><span>AI 엔지니어</span><span>임베디드</span>
      </div>
    </section>

    <section class="grid-3">
      <div class="card">
        <h3>연구실/동아리</h3>
        <p>AI·IoT 연구실, 오픈소스 스터디, 알고리즘/PS 스터디, 보안 동아리 등.</p>
      </div>
      <div class="card">
        <h3>산학/대회</h3>
        <p>기업연계 캡스톤, 공모전/해커톤, 기업분석 경진대회 참여 지원.</p>
      </div>
      <div class="card">
        <h3>공지 하이라이트</h3>
        <ul id="hot-notices" class="link-list"><!-- JS로 렌더 --></ul>
      </div>
    </section>
  </main>

  <footer class="site-footer">
    <div class="container">
      <small>© <script>document.write(new Date().getFullYear())</script> 동신대학교 컴퓨터공학과</small>
    </div>
  </footer>
</body>
</html>
