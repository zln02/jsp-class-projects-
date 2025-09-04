<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>결제 확인</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <style>
    :root{ --bg:#0b0b0b; --card:#121212; --muted:#9b9ba1; --text:#f5f5f7; --btn:#0071e3; --btn-h:#005bb5; --r:16px; --shadow:0 16px 36px rgba(0,0,0,.35) }
    *{box-sizing:border-box} body{margin:0; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Arial; background:var(--bg); color:var(--text)}
    .wrap{max-width:840px; margin:50px auto; padding:0 16px}
    .card{background:linear-gradient(180deg,#151515,#0f0f0f); border:1px solid rgba(255,255,255,.06); border-radius:var(--r); overflow:hidden; box-shadow:var(--shadow)}
    .head{padding:18px 22px; border-bottom:1px solid rgba(255,255,255,.08); font-weight:800}
    .body{padding:22px}
    .row{display:flex; gap:18px; align-items:center}
    .thumb{width:160px; height:120px; border-radius:12px; overflow:hidden; background:#0d0d0d; flex:0 0 auto}
    .thumb img{width:100%; height:100%; object-fit:cover; display:block}
    .meta{flex:1}
    .title{font-size:20px; font-weight:800; margin:0 0 4px}
    .muted{color:var(--muted); margin:0 0 10px}
    .price{font-size:22px; font-weight:900; margin:0}
    .actions{display:flex; gap:10px; margin-top:22px}
    .btn{flex:1; padding:12px 16px; border:0; border-radius:12px; font-weight:800; cursor:pointer}
    .ghost{background:#2a2a2a; color:#fff}
    .ghost:hover{background:#303030}
    .primary{background:var(--btn); color:#fff}
    .primary:hover{background:var(--btn-h)}
  </style>
</head>
<body>
<%
  String item  = request.getParameter("item");
  String price = request.getParameter("price");
  String img   = request.getParameter("img");
  if (item == null)  item  = "상품";
  if (price == null) price = "0";
  if (img == null)   img   = "assets/img/placeholder.jpg"; // 없을 때 대비
%>

<div class="wrap">
  <div class="card">
    <div class="head">결제 확인</div>
    <div class="body">
      <div class="row">
        <div class="thumb"><img src="<%= img %>" alt="<%= item %>"></div>
        <div class="meta">
          <h2 class="title"><%= item %></h2>
          <p class="muted">수량 1 · 무료 배송</p>
          <p class="price">₩ <%= String.format("%,d", Integer.parseInt(price)) %></p>
        </div>
      </div>

      <div class="actions">
        <form action="AppleStore.jsp" method="get">
          <button class="btn ghost" type="submit">계속 쇼핑</button>
        </form>
        <form action="Complete.jsp" method="post">
          <input type="hidden" name="item"  value="<%= item %>">
          <input type="hidden" name="price" value="<%= price %>">
          <input type="hidden" name="img"   value="<%= img %>">
          <button class="btn primary" type="submit">결제 진행</button>
        </form>
      </div>
    </div>
  </div>
</div>
</body>
</html>
