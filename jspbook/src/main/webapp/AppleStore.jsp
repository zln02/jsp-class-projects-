<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>Apple Store</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
      :root {
        --bg: #0b0b0b;
        --card: #121212;
        --muted: #9b9ba1;
        --text: #f5f5f7;
        --brand: #ffffff;
        --btn: #0071e3;
        --btn-hover: #005bb5;
        --radius: 16px;
        --shadow: 0 18px 40px rgba(0, 0, 0, 0.35);
      }
      * {
        box-sizing: border-box;
      }
      body {
        margin: 0;
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
          Arial;
        background: var(--bg);
        color: var(--text);
      }
      header {
        position: sticky;
        top: 0;
        z-index: 20;
        backdrop-filter: blur(8px);
        background: rgba(0, 0, 0, 0.6);
        border-bottom: 1px solid rgba(255, 255, 255, 0.06);
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 12px 24px;
      }
      .brand {
        font-weight: 800;
        letter-spacing: 0.3px;
      }
      nav a {
        color: #ddd;
        text-decoration: none;
        margin-left: 16px;
        font-size: 14px;
      }
      nav a:hover {
        color: #fff;
      }

      .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 24px;
      }

      .hero {
        position: relative;
        border-radius: 24px;
        overflow: hidden;
        box-shadow: var(--shadow);
        margin: 12px 0 28px;
        background: radial-gradient(1200px 500px at 50% -10%, #1a1a1a, #0b0b0b);
        min-height: 360px;
      }
      .hero .back {
        position: absolute;
        inset: 0;
        background: url("https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-16-pro-model-unselect-gallery-1-202409_FMT_WHH?wid=1024&hei=1024&fmt=jpeg&qlt=90&.v=169")
          center/cover no-repeat;
        opacity: 0.35;
      }
      .hero .content {
        position: absolute;
        inset: 0;
        display: grid;
        place-items: center;
        text-align: center;
        padding: 28px;
      }
      .hero h1 {
        font-size: 48px;
        margin: 0 0 10px;
      }
      .hero p {
        color: var(--muted);
        margin: 0 0 18px;
        font-size: 18px;
      }
      .cta {
        background: var(--btn);
        color: #fff;
        padding: 12px 22px;
        border-radius: 999px;
        text-decoration: none;
        font-weight: 700;
      }
      .cta:hover {
        background: var(--btn-hover);
      }

      .grid {
        display: grid;
        gap: 22px;
        grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
      }
      .card {
        background: linear-gradient(180deg, #151515, #0f0f0f);
        border: 1px solid rgba(255, 255, 255, 0.06);
        border-radius: var(--radius);
        overflow: hidden;
        box-shadow: var(--shadow);
        display: flex;
        flex-direction: column;
        transition: transform 0.15s ease, box-shadow 0.15s ease,
          border-color 0.15s ease;
      }
      .card:hover {
        transform: translateY(-3px);
        border-color: rgba(255, 255, 255, 0.12);
        box-shadow: 0 25px 60px rgba(0, 0, 0, 0.5);
      }
      .thumb {
        position: relative;
        aspect-ratio: 4/3;
        overflow: hidden;
        background: #0d0d0d;
      }
      .thumb img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        display: block;
      }
      .badge {
        position: absolute;
        top: 10px;
        left: 10px;
        font-size: 12px;
        padding: 6px 10px;
        border-radius: 999px;
        background: rgba(255, 255, 255, 0.12);
        color: #fff;
        backdrop-filter: blur(6px);
      }
      .body {
        padding: 16px 16px 6px;
      }
      .title {
        font-size: 20px;
        font-weight: 800;
        margin: 0 0 4px;
      }
      .desc {
        color: var(--muted);
        font-size: 14px;
        margin: 0 0 12px;
      }
      .price {
        font-size: 18px;
        font-weight: 800;
        margin: 0 0 12px;
      }
      .actions {
        padding: 0 16px 16px;
        margin-top: auto;
      }
      .btn {
        width: 100%;
        border: 0;
        border-radius: 12px;
        padding: 12px 16px;
        background: var(--btn);
        color: #fff;
        font-weight: 800;
        cursor: pointer;
      }
      .btn:hover {
        background: var(--btn-hover);
      }
      footer {
        color: #8e8e93;
        text-align: center;
        padding: 28px 0;
        font-size: 12px;
      }
      form {
        margin: 0;
      }
    </style>
  </head>
  <body>
    <header>
      <div class="brand"> Apple Store</div>
      <nav>
        <a href="#">Mac</a><a href="#">iPhone</a><a href="#">iPad</a
        ><a href="#">Watch</a><a href="#">Support</a>
      </nav>
    </header>

    <div class="container">
      <!-- HERO -->
      <section class="hero">
        <div class="back"></div>
        <div class="content">
          <div>
            <h1>iPhone 17 Pro</h1>
            <p>티타늄 디자인 · A18 Pro 칩 · Pro 카메라</p>
            <a class="cta" href="#products">지금 보기</a>
          </div>
        </div>
      </section>

      <!-- PRODUCTS -->
      <section id="products" class="grid">
        <!-- 16 Pro (Natural Titanium) -->
        <article class="card">
          <div class="thumb">
            <img
              src="https://www.apple.com/in/iphone-16-pro/images/meta/iphone-16-pro_overview__f7v1xxo7p2my_og.png"
              alt="iPhone 16 Pro Natural Titanium"
            />
            <span class="badge">신제품</span>
          </div>
          <div class="body">
            <h3 class="title">iPhone 16 Pro</h3>
            <p class="desc">Natural Titanium</p>
            <div class="price">₩ 0원</div>
          </div>
          <div class="actions">
            <form action="Checkout.jsp" method="post">
              <input
                type="hidden"
                name="item"
                value="iPhone 16 Pro · Natural Titanium"
              />
              <input type="hidden" name="price" value="1490000" />
              <input
                type="hidden"
                name="img"
                value="https://www.apple.com/in/iphone-16-pro/images/meta/iphone-16-pro_overview__f7v1xxo7p2my_og.png"
              />
              <button class="btn" type="submit">구매하기</button>
            </form>
          </div>
        </article>

        <!-- 16 Pro (Black Titanium) -->
        <article class="card">
          <div class="thumb">
            <img
              src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-16-pro-finish-select-202409-6-9inch-black-titanium?wid=1024&hei=1024&fmt=jpeg&qlt=90&.v=169"
              alt="iPhone 16 Pro Black Titanium"
            />
          </div>
          <div class="body">
            <h3 class="title">iPhone 16 Pro</h3>
            <p class="desc">Black Titanium</p>
            <div class="price">₩ 0원</div>
          </div>
          <div class="actions">
            <form action="Checkout.jsp" method="post">
              <input
                type="hidden"
                name="item"
                value="iPhone 16 Pro · Black Titanium"
              />
              <input type="hidden" name="price" value="1490000" />
              <input
                type="hidden"
                name="img"
                value="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-16-pro-finish-select-202409-6-9inch-black-titanium?wid=1024&hei=1024&fmt=jpeg&qlt=90&.v=169"
              />
              <button class="btn" type="submit">구매하기</button>
            </form>
          </div>
        </article>

        <!-- 16 Pro (Desert Titanium) -->
        <article class="card">
          <div class="thumb">
            <img
              src="https://images.bestbuy.com/images/products/6443/6443361_sd.jpg"
              alt="iPhone 16 Pro Desert Titanium"
            />
          </div>
          <div class="body">
            <h3 class="title">iPhone 16 Pro</h3>
            <p class="desc">Desert Titanium</p>
            <div class="price">₩ 0원</div>
          </div>
          <div class="actions">
            <form action="Checkout.jsp" method="post">
              <input
                type="hidden"
                name="item"
                value="iPhone 16 Pro · Desert Titanium"
              />
              <input type="hidden" name="price" value="1490000" />
              <input
                type="hidden"
                name="img"
                value="https://images.bestbuy.com/images/products/6443/6443361_sd.jpg"
              />
              <button class="btn" type="submit">구매하기</button>
            </form>
          </div>
        </article>
      </section>
    </div>

    <footer>© 2025 Apple Inc. All rights reserved.</footer>
  </body>
</html>
