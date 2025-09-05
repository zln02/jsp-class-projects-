document.addEventListener("DOMContentLoaded", () => {
  const notices = [
    {
      id: 5,
      title: "2025-2학기 전공수업 수강안내",
      date: "2025-08-26",
      type: "학사",
    },
    { id: 4, title: "AI·데이터톤 참가 모집", date: "2025-08-18", type: "대회" },
    { id: 3, title: "캡스톤디자인 설명회", date: "2025-08-10", type: "행사" },
    {
      id: 2,
      title: "SQLD/정보처리기사 스터디 모집",
      date: "2025-07-20",
      type: "공지",
    },
    {
      id: 1,
      title: "학과 사무실 하계 운영시간",
      date: "2025-07-01",
      type: "일반",
    },
  ];

  // 홈 하이라이트
  const hot = document.getElementById("hot-notices");
  if (hot) {
    hot.innerHTML = notices
      .slice(0, 3)
      .map(
        (n) =>
          `<li><a href="${
            location.origin + location.pathname.replace(/\/[^/]+$/, "")
          }/notices.jsp#n${n.id}">${
            n.title
          }</a> <small style="color:#9ca3af">(${n.date})</small></li>`
      )
      .join("");
  }

  // 공지 테이블
  const tbody = document.querySelector("#notice-table tbody");
  if (tbody) {
    tbody.innerHTML = notices
      .map(
        (n) =>
          `<tr id="n${n.id}"><td>${n.id}</td><td>${n.title}</td><td>${n.date}</td><td>${n.type}</td></tr>`
      )
      .join("");
  }
});
