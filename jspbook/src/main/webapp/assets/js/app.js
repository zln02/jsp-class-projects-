/** 더미 상품 데이터 (DB 연동 전) */
const PRODUCTS = [
  {id:101, name:"네오 후디", price:59000, cat:"의류", tags:["후드","캐주얼"], emoji:"🧥", pop:95, created:"2025-08-22"},
  {id:102, name:"모던 스니커즈", price:99000, cat:"의류", tags:["신발"], emoji:"👟", pop:90, created:"2025-08-10"},
  {id:103, name:"무선 이어버드", price:129000, cat:"가전", tags:["오디오"], emoji:"🎧", pop:98, created:"2025-08-28"},
  {id:104, name:"미니 가습기", price:39000, cat:"가전", tags:["생활"], emoji:"💧", pop:70, created:"2025-07-12"},
  {id:105, name:"레더 카드지갑", price:29000, cat:"액세서리", tags:["지갑"], emoji:"👝", pop:60, created:"2025-08-01"},
  {id:106, name:"알루 노트북 스탠드", price:49000, cat:"액세서리", tags:["사무"], emoji:"💻", pop:85, created:"2025-08-20"},
  {id:107, name:"컴팩트 키보드", price:89000, cat:"가전", tags:["키보드"], emoji:"⌨️", pop:88, created:"2025-08-24"},
  {id:108, name:"라이트 재킷", price:79000, cat:"의류", tags:["아우터"], emoji:"🧥", pop:72, created:"2025-06-02"}
];
function fmt(n){ return n.toLocaleString("ko-KR"); }
function qs(id){ return document.getElementById(id); }

document.addEventListener("DOMContentLoaded", ()=>{
  // 홈 베스트
  const best = qs("best-grid");
  if(best){
    const top = PRODUCTS.slice().sort((a,b)=>b.pop-a.pop).slice(0,4);
    best.innerHTML = top.map(p=>cardHTML(p)).join("");
  }

  // 목록
  const grid = qs("product-grid");
  if(grid){
    const q=qs("q"), cat=qs("cat"), sort=qs("sort");
    const render = ()=>{
      let arr = PRODUCTS.slice();
      if(q && q.value) {
        const kw = q.value.trim();
        arr = arr.filter(p => p.name.includes(kw) || p.tags.some(t=>t.includes(kw)));
      }
      if(cat && cat.value) arr = arr.filter(p=>p.cat===cat.value);
      switch(sort.value){
        case "price_asc": arr.sort((a,b)=>a.price-b.price); break;
        case "price_desc": arr.sort((a,b)=>b.price-a.price); break;
        case "new": arr.sort((a,b)=>new Date(b.created)-new Date(a.created)); break;
        default: arr.sort((a,b)=>b.pop-a.pop);
      }
      grid.innerHTML = arr.map(p=>cardHTML(p)).join("");
    };
    [q,cat,sort].forEach(el=>el && el.addEventListener("input",render));
    render();
  }

  // 상세
  const detail = qs("product-detail");
  if(detail){
    const id = Number(new URLSearchParams(location.search).get("id"));
    const p = PRODUCTS.find(x=>x.id===id) || PRODUCTS[0];
    detail.innerHTML = `
      <div class="media">${p.emoji}</div>
      <div>
        <div class="badge">${p.cat}</div>
        <h1>${p.name}</h1>
        <div class="price" style="font-size:28px;font-weight:900">${fmt(p.price)}원</div>
        <p style="color:#9ca3af">태그: ${p.tags.join(", ")}</p>
        <div style="display:flex;gap:10px;margin-top:12px">
          <a class="btn" href="add_to_cart.jsp?id=${p.id}&qty=1">장바구니 담기</a>
          <a class="btn accent" href="checkout.jsp">바로구매(샘플)</a>
        </div>
      </div>`;
  }
});

function cardHTML(p){
  const base = location.pathname.replace(/\/[^/]+$/,'');
  const pd = `${base}/product.jsp?id=${p.id}`;
  const add = `${base}/add_to_cart.jsp?id=${p.id}&qty=1`;
  return `
  <div class="product">
    <div class="thumb">${p.emoji}</div>
    <div class="name">${p.name}</div>
    <div class="price">${fmt(p.price)}원</div>
    <div style="display:flex;gap:8px">
      <a class="btn" href="${pd}">자세히</a>
      <a class="btn" href="${add}">담기</a>
    </div>
  </div>`;
}

/** 장바구니 출력 (서버 세션 cart.jsp에서 호출) */
function renderCart(targetId, compact=false){
  fetch("cart.jsp", {method:"HEAD"}) // dummy to ensure same origin
    .finally(()=>{
      // 서버 세션 내용은 JSP에서 렌더 못가져오니, 간단히 localStorage 미러링 옵션도 고려 가능.
      // 여기서는 서버 세션 기반으로만 링크/버튼 제어(수량 표시는 간략).
      const url = new URL(location.href);
      // 간단한 안내만: 실제 항목은 서버 cart.jsp에서 테이블 생성해도 되지만
      // 이번 MVP는 버튼 동작 위주로 둔다.
      const el = qs(targetId);
      if(!el) return;
      el.innerHTML = `
        <p class="hint">* 장바구니는 서버 세션에 저장됩니다. 항목은 '장바구니' 페이지에서 확인/삭제하세요.</p>
        <table class="table"><thead><tr><th>상품</th><th>가격</th><th>액션</th></tr></thead>
        <tbody>
          ${PRODUCTS.slice(0,3).map(p=>`
            <tr><td>${p.name}</td><td>${fmt(p.price)}원</td>
            <td><a class="btn" href="add_to_cart.jsp?id=${p.id}&qty=1">담기</a></td></tr>`).join("")}
        </tbody></table>`;
    });
}
