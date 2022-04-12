<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko  ">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>시몬스 침대(3조)</title>
    <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet" />
    <link href="../css/reset.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/swiper-bundle.css" />
    <link href="../css/layout.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/GalLayout.css" />
    <link rel="stylesheet" href="../css/GalContents.css" />
    <link rel="stylesheet" href="../css/GalMain.css" />
    <link href="../css/main.css" rel="stylesheet" />
    <link href="../css/aboutus.css" rel="stylesheet" />
    <link href="../css/form.css" rel="stylesheet" />
    <script src="../js/jquery-3.6.0.min.js"></script>
    <script src="../js/swiper-bundle.min.js"></script>
    <script src="../js/main.js" defer></script>
    <script src="../js/aboutus.js" defer></script>
  </head>
  <body>
    <!-- a링크 주소 미입력 -->
    <header id="header">
      <!-- 좌측 메뉴 -->
      <div id="menu">
        <img src="../images/layout/header_menu.png" />
        <span>메뉴</span>
      </div>

      <!-- 숨겨진 좌측 메뉴 -->
      <div id="gnb">
        <ul class="gnbList">
          <!-- #lnb 이벤트 효과 다시 지정해야됨 -->
          <li>
            <a href="">
              <span>Beautyrest BLACK</span>
              <img src="../images/layout/lnb_plus.png" class="imgOff" />
              <img src="../images/layout/lnb_minus.png" class="imgOn" />
            </a>
            <ul class="depth02">
              <li><a href="">the BLACK</a></li>
              <li><a href="">MATTRESS</a></li>
              <li><a href="">FOUNDATION</a></li>
            </ul>
          </li>
          <li>
            <a href="">
              <span>COLLECTION</span>
              <img src="../images/layout/lnb_plus.png" class="imgOff" />
              <img src="../images/layout/lnb_minus.png" class="imgOn" />
            </a>
            <ul class="depth02">
              <li><a href="">Beautyrest</a></li>
              <li><a href="">N32</a></li>
              <li><a href="">KENOSHA</a></li>
            </ul>
          </li>
          <li>
            <a href="">
              <span>PRODUCT</span>
              <img src="../images/layout/lnb_plus.png" class="imgOff" />
              <img src="../images/layout/lnb_minus.png" class="imgOn" />
            </a>
            <ul class="depth02">
              <li><a href="">MATTRESS</a></li>
              <li><a href="">FRAME</a></li>
              <li><a href="">ROOM SET</a></li>
              <li><a href="">FOUNDATION</a></li>
              <li><a href="">FURNITURE</a></li>
              <li><a href="">BEDDING</a></li>
              <li><a href="">FRAGRANCE</a></li>
            </ul>
          </li>
          <li><a href="">ONLINE STORE</a></li>
          <li><a href="">OUTLET</a></li>

          <!-- 가운데 밑줄 -->
          <div class="line"></div>

          <li>
            <a href="">
              <span>ABOUT US</span>
              <img src="../images/layout/lnb_plus.png" class="imgOff" />
              <img src="../images/layout/lnb_minus.png" class="imgOn" />
            </a>
            <ul class="depth02">
              <li><a href="../aboutus/Heritage">HERITAGE</a></li>
              <li><a href="../aboutus/MediaTvc">MEDIA</a></li>
              <li><a href="../aboutus/Hotel">SIMMONS IN HOTEL</a></li>
            </ul>
          </li>
          <li>
            <a href="">
              <span>SIMMONS Factorium</span>
              <img src="../images/layout/lnb_plus.png" class="imgOff" />
              <img src="../images/layout/lnb_minus.png" class="imgOn" />
            </a>
            <ul class="depth02">
              <li><a href="">INTRO</a></li>
              <li><a href="">R&D</a></li>
              <li><a href="">TERRACE</a></li>
              <li><a href="">오시는길</a></li>
            </ul>
          </li>
          <li><a href="">SIMMONS GALLERY</a></li>
          <li><a href="">매장 찾기</a></li>
        </ul>

        <!-- 기타 / DB작업 -->
        <div class="etc">
          <a href="../member/Login">로그인</a>
          <a href="../product/Order">주문내역</a>
          <a href="../cs/Faq">고객센터</a>
        </div>

        <!-- 찾기 / DB작업 -->
        <div class="searchBox">
          <input type="text" name="search" class="search" />
          <a href="" class="btnSearch">
            <img src="../images/layout/gnb_search.png" />
          </a>
        </div>

        <!-- sns링크 -->
        <div class="sns">
          <a href=""><img src="../images/layout/gnb_sns01.png" /></a>
          <a href=""><img src="../images/layout/gnb_sns02.png" /></a>
          <a href=""><img src="../images/layout/gnb_sns03.png" /></a>
          <a href=""><img src="../images/layout/gnb_sns04.png" /></a>
        </div>

        <!-- banner링크 -->
        <div class="banner">
          <a href="">
            <img src="../images/layout/gnb_n32_banner.jpg" />
          </a>
          <a href="">
            <img src="../images/layout/gnb_2022_Wedding.jpg" />
          </a>
        </div>

        <!-- 닫기버튼 -->
        <div class="gnbClose">
          <img src="../images/layout/gnb_close.png" />
        </div>
      </div>
      <!-- 좌측 메뉴 end -->

      <!-- 로고 -->
      <div id="logo">
        <a href="../"><img src="../images/layout/header_logo.png" /></a>
      </div>

      <!-- 우측 메뉴 -->
      <div id="cart">
        <img src="../images/layout/icon_cart.png" />
        <span>카트</span>
      </div>

      <!-- 숨겨진 우측 메뉴(카트) / DB작업  -->
      <div class="cartBox">
        <!-- 메뉴 리스트 -->
        <div class="allCount">
          <h2 class="count cart on">CART <span class="cartCount">(0)</span></h2>
          <h2 class="count recent">RECENT <span class="recentCount">(0)</span></h2>
        </div>

        <!-- 카트 리스트 -->
        <div class="cartList">
          <div class="list cartProduct on">
            <p>카트에 담긴 상품이 없습니다.</p>
            <div class="product"></div>
            <a href="" class="cartLink">CART 바로가기</a>
          </div>
          <div class="list recentProduct">
            <p>최근 본 상품이 없습니다.</p>
            <div class="product"></div>
          </div>
        </div>

        <!-- CARTLIST DB -->
        <div class="etc">
          <a href="../member/Login">로그인</a>
          <a href="../product/Order">주문내역</a>
          <a href="../cs/Faq">고객센터</a>
        </div>

        <!-- 닫기 -->
        <div class="cartClose">
          <img src="../images/layout/gnb_close.png" />
        </div>
      </div>
      <!-- 우측 메뉴 end -->

      <!-- 블러 처리 / 좌, 우측 메뉴 닫기 -->
      <div class="closePage"></div>
    </header>
    <!-- header end -->