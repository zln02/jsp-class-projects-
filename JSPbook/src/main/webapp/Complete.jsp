<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>구매 완료</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <style>
    :root{ --bg:#0b0b0b; --card:#121212; --muted:#9b9ba1; --text:#f5f5f7; --btn:#000; --r:16px; --shadow:0 16px 36px rgba(0,0,0,.35) }
    *{box-sizing:border-box} body{margin:0; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Arial; background:var(--bg); color:var(--text); display:grid; place-items:center; min-height:100vh}
    .card{width:min(780px,92vw); background:linear-gradient(180deg,#151515,#0f0f0f); border:1px solid rgba(255,255,255,.06); border-radius:var(--r); box-shadow:var(--shadow); overflow:hidden}
    .head{padding:22px; border-bottom:1px solid rgba(255,255,255,.08); font-weight:900}
    .body{padding:22px}
    .row{display:flex; gap:18px; align-items:center}
    .thumb{width:140px; height:105px; border-radius:12px; overflow:hidden; background:#0d0d0d; flex:0 0 auto}
    .thumb img{width:100%; height:100%; object-fit:cover}
    h1{margin:0 0 8px}
    .muted{color:var(--muted); margin:0 0 12px}
    .price{font-size:22px; font-weight:900; margin:0 0 4px}
    .back{display:inline-block; margin-top:14px; background:var(--btn); color:#fff; padding:12px 16px; border-radius:12px; text-decoration:none; font-weight:800}
    .back:hover{opacity:.9}
  </style>
</head>
<body>
<%
  String item  = request.getParameter("item");
  String price = request.getParameter("price");
  String img   = request.getParameter("img");
  if (item == null)  item  = "상품";
  if (price == null) price = "0";
  if (img == null)   img   = "assets/img/placeholder.jpg";
%>

<div class="card">
  <div class="head">구매 완료 🎉</div>
  <div class="body">
    <div class="row">
      <div class="thumb"><img src="<%= img %>" alt="<%= item %>"></div>
      <div>
        <h1><%= item %></h1>
        <p class="price">₩ <%= String.format("%,d", Integer.parseInt(price)) %></p>
        <p class="muted">주문이 정상적으로 접수되었습니다. 이메일로 영수증이 전송됩니다.</p>
        <a class="back" href="AppleStore.jsp">돌아가기</a>
      </div>
    </div>
  </div>
</div>
</body>
</html>
