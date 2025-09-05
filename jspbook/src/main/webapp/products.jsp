<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  request.setAttribute("pageTitle","Elegance | Collection");
  request.setAttribute("active","products");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <%@ include file="WEB-INF/views/_head.jspf" %>
  <style>
    .cart {position:fixed;top:0;right:-420px;width:420px;height:100vh;background:#fff;color:#000;transition:.4s;z-index:2000;display:flex;flex-direction:column;}
    .cart.active {right:0;}
    .cart-header {background:#1c1c1c;color:#f5f5f0;padding:1rem;display:flex;justify-content:space-between;align-items:center;}
    .cart-items {flex:1;overflow-y:auto;padding:1rem;}
    .cart-item {display:flex;align-items:center;gap:1rem;padding:.8rem 0;border-bottom:1px solid #ddd;}
    .cart-item .icon {font-size:2rem;}
    .cart-total {padding:1rem;border-top:1px solid #ddd;text-align:center;}
    .checkout-btn {width:100%;padding:1rem;background:#111;color:#f5f5f0;border:none;cursor:pointer;text-transform:uppercase;letter-spacing:1px;}
    .checkout-btn:hover {background:#2c2c2c;}
  </style>
</head>
<body>
  <%@ include file="WEB-INF/views/_layout.jspf" %>
  <main style="max-width:1200px;margin:auto;padding:2rem;">
    <h1>Collection</h1>
    <div class="products-grid" id="product-grid">
      <!-- 상품 카드 -->
    </div>
  </main>

  <!-- Cart -->
  <div class="cart" id="cart">
    <div class="cart-header">
      <span>Shopping Bag</span>
      <button onclick="toggleCart()" style="background:none;border:none;color:#f5f5f0;font-size:1.5rem;cursor:pointer;">×</button>
    </div>
    <div class="cart-items" id="cart-items"></div>
    <div class="cart-total">
      <div id="cart-total">TOTAL: ₩0</div>
      <button class="checkout-btn">Checkout</button>
    </div>
  </div>

  <script>
    // 상품 데이터
    const products = [
      {id:1,icon:"👔",name:"Classic Black Suit",price:980000},
      {id:2,icon:"🤵",name:"Formal Tuxedo",price:1450000},
      {id:3,icon:"🧥",name:"Smart Casual Blazer",price:650000},
      {id:4,icon:"👨‍💼",name:"Pinstripe Three Piece",price:1180000},
      {id:5,icon:"🎩",name:"Midnight Tuxedo",price:1850000},
      {id:6,icon:"💒",name:"Wedding Light Grey Suit",price:1450000},
      {id:7,icon:"🕴️",name:"Business Charcoal Suit",price:890000},
      {id:8,icon:"🧳",name:"Travel Essential Jacket",price:720000},
    ];
    let cart = [];

    // 상품 출력
    const grid = document.getElementById("product-grid");
    grid.innerHTML = products.map(p => `
      <div class="product-card">
        <div class="product-img">${p.icon}</div>
        <div class="product-name">${p.name}</div>
        <div class="product-price">₩${p.price.toLocaleString()}</div>
        <button class="btn add-btn" onclick="addToCart(${p.id})">Add to Cart</button>
      </div>
    `).join("");

    function toggleCart(){ document.getElementById("cart").classList.toggle("active"); updateCart(); }

    function addToCart(id){
      const product = products.find(p => p.id===id);
      const existing = cart.find(i => i.id===id);
      if(existing){ existing.qty++; } else { cart.push({...product,qty:1}); }
      toggleCart();
    }

    function removeFromCart(id){
      cart = cart.filter(i => i.id!==id);
      updateCart();
    }

    function updateCart(){
      const itemsEl = document.getElementById("cart-items");
      const totalEl = document.getElementById("cart-total");
      if(cart.length===0){ itemsEl.innerHTML="<p style='text-align:center;color:#666;'>Your cart is empty</p>"; totalEl.textContent="TOTAL: ₩0"; return; }
      itemsEl.innerHTML = cart.map(i => `
        <div class="cart-item">
          <div class="icon">${i.icon}</div>
          <div style="flex:1">
            <div>${i.name}</div>
            <div>₩${i.price.toLocaleString()} × ${i.qty}</div>
          </div>
          <button onclick="removeFromCart(${i.id})" style="background:none;border:none;font-size:1.2rem;cursor:pointer;">×</button>
        </div>
      `).join("");
      const total = cart.reduce((s,i)=>s+i.price*i.qty,0);
      totalEl.textContent = "TOTAL: ₩"+total.toLocaleString();
    }
  </script>
</body>
</html>
