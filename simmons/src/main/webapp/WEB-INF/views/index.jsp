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
    <link href="css/reset.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/swiper-bundle.css" />
    <link href="css/layout.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/form.css" rel="stylesheet" />
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/swiper-bundle.min.js"></script>
    <script src="js/main.js" defer></script>
  </head>
  <body>
    <!-- a링크 주소 미입력 -->
    <!-- 풀페이지 or 마우스이벤트 선택해야됨.. -->
    <header id="header">
      <!-- 좌측 메뉴 -->
      <div id="menu">
        <img src="images/layout/header_menu.png" />
        <span>메뉴</span>
      </div>

      <!-- 숨겨진 좌측 메뉴 -->
      <div id="gnb">
        <ul class="gnbList">
          <!-- #lnb 이벤트 효과 다시 지정해야됨 -->
          <li>
            <a href="">
              <span>Beautyrest BLACK</span>
              <img src="images/layout/lnb_plus.png" class="imgOff" />
              <img src="images/layout/lnb_minus.png" class="imgOn" />
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
              <img src="images/layout/lnb_plus.png" class="imgOff" />
              <img src="images/layout/lnb_minus.png" class="imgOn" />
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
              <img src="images/layout/lnb_plus.png" class="imgOff" />
              <img src="images/layout/lnb_minus.png" class="imgOn" />
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
              <img src="images/layout/lnb_plus.png" class="imgOff" />
              <img src="images/layout/lnb_minus.png" class="imgOn" />
            </a>
            <ul class="depth02">
              <li><a href="">HERITAGE</a></li>
              <li><a href="">MEDIA</a></li>
              <li><a href="">SIMMONS IN HOTEL</a></li>
            </ul>
          </li>
          <li>
            <a href="">
              <span>SIMMONS Factorium</span>
              <img src="images/layout/lnb_plus.png" class="imgOff" />
              <img src="images/layout/lnb_minus.png" class="imgOn" />
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
          <a href="login.html">로그인</a>
          <a href="order.html">주문내역</a>
          <a href="cs_faq.html">고객센터</a>
        </div>

        <!-- 찾기 / DB작업 -->
        <div class="searchBox">
          <input type="text" name="search" class="search" />
          <a href="" class="btnSearch">
            <img src="images/layout/gnb_search.png" />
          </a>
        </div>

        <!-- sns링크 -->
        <div class="sns">
          <a href=""><img src="images/layout/gnb_sns01.png" /></a>
          <a href=""><img src="images/layout/gnb_sns02.png" /></a>
          <a href=""><img src="images/layout/gnb_sns03.png" /></a>
          <a href=""><img src="images/layout/gnb_sns04.png" /></a>
        </div>

        <!-- banner링크 -->
        <div class="banner">
          <a href="">
            <img src="images/layout/gnb_n32_banner.jpg" />
          </a>
          <a href="">
            <img src="images/layout/gnb_2022_Wedding.jpg" />
          </a>
        </div>

        <!-- 닫기버튼 -->
        <div class="gnbClose">
          <img src="images/layout/gnb_close.png" />
        </div>
      </div>
      <!-- 좌측 메뉴 end -->

      <!-- 로고 -->
      <div id="logo">
        <a href="./"><img src="images/layout/header_logo.png" /></a>
      </div>

      <!-- 우측 메뉴 -->
      <div id="cart">
        <img src="images/layout/icon_cart.png" />
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
          <a href="login.html">로그인</a>
          <a href="order.html">주문내역</a>
          <a href="cs_faq.html">고객센터</a>
        </div>

        <!-- 닫기 -->
        <div class="cartClose">
          <img src="images/layout/gnb_close.png" />
        </div>
      </div>
      <!-- 우측 메뉴 end -->

      <!-- 블러 처리 / 좌, 우측 메뉴 닫기 -->
      <div class="closePage"></div>
    </header>
    <!-- header end -->

    <!-- main -->
    <main id="main">
      <div id="mainSlider">
        <ul class="swiper-wrapper">
          <!-- 네이버 비디오 방법 찾는 중.. -->
          <li class="swiper-slide video">
            <video src="https://tv.naver.com/embed/24812078" autoplay muted></video>
          </li>
          <li class="swiper-slide"><a href=""></a></li>
          <li class="swiper-slide"><a href=""></a></li>
          <li class="swiper-slide"><a href=""></a></li>
          <li class="swiper-slide"><a href=""></a></li>
          <li class="swiper-slide"><a href=""></a></li>
          <li class="swiper-slide"><a href=""></a></li>
          <li class="swiper-slide"><a href=""></a></li>
          <li class="swiper-slide"><a href=""></a></li>
          <li class="swiper-slide"><a href=""></a></li>
        </ul>
        <div class="page"></div>
        <div class="btns">
          <img src="images/main/page_left.png" alt="" class="btn pageLeft" />
          <img src="images/main/page_right.png" alt="" class="btn pageRight" />
        </div>
        <!-- collection 바로가기 -->
        <div class="btnCollection">
          <img src="images/layout/btn_collection.png" alt="" />
        </div>
      </div>

      <!-- popup / 쿠키작업 -->
      <div id="popup">
        <a href="">
          <img src="images/layout/pop_W2.jpg" alt="" />
        </a>
        <div class="popupClose"></div>
        <label><input type="checkbox" />오늘 하루 이 창을 열지 않음</label>
      </div>
    </main>
    <!-- main end -->

    <div class="footer">
      <!-- footer 배너 -->
      <div id="banner">
        <!-- home 바로가기 -->
        <div class="btnHome">
          <img src="images/layout/btn_home.png" alt="" />
        </div>
        <!-- 배너 -->
        <ul>
          <li><a href=""></a></li>
          <li><a href=""></a></li>
          <li><a href=""></a></li>
          <li><a href=""></a></li>
        </ul>
      </div>
      <!-- footer 배너 end -->

      <!-- footer -->
      <footer id="footer">
        <div class="logo">
          <div class="logoImg">
            <img src="images/layout/footer_logo.png" />
          </div>
          <ul>
            <li><a href="">이용약관</a></li>
            <li><a href="">개인정보처리방침</a></li>
          </ul>
          <div class="sns">
            <a href=""><img src="images/layout/footer_sns01.png" /></a>
            <a href=""><img src="images/layout/footer_sns02.png" /></a>
            <a href=""><img src="images/layout/footer_sns03.png" /></a>
            <a href=""><img src="images/layout/footer_sns04.png" /></a>
          </div>
        </div>
        <div class="company">
          <ul>
            <li>(주)시몬스</li>
            <li>주소: 경기도 이천시 모가면 사실로 1000</li>
            <li>대표: 안정호</li>
            <li>고객센터:1899-8182</li>
          </ul>
          <ul>
            <li>사업자등록번호: 126-81-24808</li>
            <li><a href="" class="companyCheck">사업자정보 확인</a></li>
            <li>통신판매업신고: 제2014-경기이천-0135호</li>
          </ul>
          <ul>
            <li>개인정보 관리책임자: 이정호</li>
            <li>호스팅 서비스 사업자: ㈜가비아</li>
          </ul>
        </div>
        <div class="email">
          <p>Contact to : <a href="">master @ simmons.co.kr</a></p>
        </div>
        <div class="security">
          <img src="images/layout/footer_lg.png" />
          <p>고객님은 안전거래를 위해 현금 등으로 결제 시 모든 금액에 대하여 본 쇼핑몰에서 가입한 <a href="" class="service">구매안전서비스 </a>소비자피해보상보험 서비스를 이용하실 수 있습니다.</p>
        </div>
        <div class="copyright">
          <p>Copyright © by SIMMONS-K, Co., Ltd All Rights Reserved.</p>
        </div>
      </footer>
    </div>
    <!-- footer end -->
  </body>
</html>