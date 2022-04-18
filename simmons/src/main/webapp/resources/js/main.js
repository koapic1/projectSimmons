// collection js
const swiper1 = new Swiper("#collection .sliderBox", {
    speed: 1000,
    //effect: "fade",
    loop: true,
    autoplay: {
        delay: 2500,
        disableOnInteraction: false,
    },
    pagination: {
        el: "#collection .bullet",
        type: "bullets",
        clickable: "true",
    },
    navigation: {
        prevEl: "#collection .galleryLeft",
        nextEl: "#collection .galleryRight",
    },
});

$("#collection .start").on("click", function () {
    swiper1.autoplay.start();
    $("#collection .start").removeClass("on");
    $("#collection .stop").addClass("on");
    return false;
});
$("#collection .stop").on("click", function () {
    swiper1.autoplay.stop();
    $("#collection .stop").removeClass("on");
    $("#collection .start").addClass("on");
    return false;
});

$("#collection .firstLi .collection").on("click", function () {
    $("#collection .BeautyrestMenu").removeClass("on");
    $("#collection .collectionMenu").toggleClass("on");
    return false;
});

$("#collection .firstLi .Beautyrest").on("click", function () {
    $("#collection .collectionMenu").removeClass("on");
    $("#collection .BeautyrestMenu").toggleClass("on");
    return false;
});

$("#collection .sns a").on("click", function () {
    $("#collection .sns ul").toggleClass("on");
    return false;
});

const scrollBox1 = new Swiper("#collection .SliderScrollBox", {
    speed: 500,
    direction: "horizontal",
    slidesPerView: "auto",
    spaceBetween: 10,
    mousewheel: true,
    debugger: true,
    scrollbar: {
        el: "#collection .swiper-scrollbar",
        draggable: true,
    },
});

// 메뉴 클릭 - 숨겨진 메뉴 열기 & 좌측 메뉴 닫기 & 전체화면 블러
$("#menu").on("click", () => {
    $("#gnb").addClass("on");
    $(".cartBox").removeClass("on");
    $(".closePage").addClass("on");
});

// 메뉴 닫기 클릭 - 메뉴 닫기 & 전체화면 블러 삭제
$(".gnbClose").on("click", () => {
    $("#gnb").removeClass("on");
    $(".closePage").removeClass("on");
});

// 카트 클릭 - 숨겨진 메뉴 열기 & 우측 메뉴 닫기 & 전체화면 블러
$("#cart").on("click", () => {
    $("#gnb").removeClass("on");
    $(".cartBox").addClass("on");
    $(".closePage").addClass("on");
});

// 카트 닫기 클릭 - 메뉴 닫기 & 전체화면 블러 삭제
$(".cartClose").on("click", () => {
    $(".cartBox").removeClass("on");
    $(".closePage").removeClass("on");
});

// 블러된 화면 누르기 - 좌,우측 메뉴 닫기 & 전체화면 블러 삭제
$(".closePage").on("click", () => {
    $("#gnb").removeClass("on");
    $(".cartBox").removeClass("on");
    $(".closePage").removeClass("on");
});

// (메뉴) + 표시있는 글 클릭 - + -> - & 다른 li 닫기 & depth02 열기
$("#gnb .gnbList >li").on("click", function () {
    $(this).toggleClass("on").siblings().removeClass("on");
});

// (카트) CART 클릭 - 글자색 변경 & CARTLIST 불러오기
$(".cartBox .cart").on("click", function () {
    $(this).addClass("on").siblings().removeClass("on");
    $(".cartList .cartProduct").addClass("on");
    $(".cartList .recentProduct").removeClass("on");
});

// (카트) RECENT 클릭 - 글자색 변경 & RECENTLIST 불러오기
$(".cartBox .recent").on("click", function () {
    $(this).addClass("on").siblings().removeClass("on");
    $(".cartList .cartProduct").removeClass("on");
    $(".cartList .recentProduct").addClass("on");
});

// 팝업창 닫기
$(".popupClose").on("click", () => {
    $("#popup").addClass("off");
});

// 메인 슬라이더 - loop 적용시 li:nth-child 수정해야됨(각각 클래스명 지정해서 사진 등록)
const swiper = new Swiper("#mainSlider", {
    autoplay: true,
    //speed: 5000,
    //loop: true,
    pagination: {
        el: "#mainSlider .page",
        type: "bullets",
        clickable: "true",
    },
    navigation: {
        nextEl: ".pageRight",
        prevEl: ".pageLeft",
    },
});

// collection 클릭 - collection 열기
$("#mainSlider .btnCollection").on("click", () => {
    $("#banner").addClass("on");
    swiper.disable();
});

// home 클릭 - home 열기 & footer 닫기
$("#banner .btnHome").on("click", () => {
    $("#banner").removeClass("on");
    $("#footer").removeClass("on");
    // 재시작 찾아야됨
});

// 휠 다운 - banner 열기 / footer 열기
// 휠 업 - footer 닫기 / collection 닫기
$("#main").on("wheel", (e) => {
    if (e.originalEvent.wheelDelta < 0) {
        if ($("#banner").hasClass("on")) {
            $("#footer").addClass("on");
        }
        $("#banner").addClass("on");
        swiper.disable();
        video.paused();
    }
});

$(".footer").on("wheel", (e) => {
    if (e.originalEvent.wheelDelta < 0) {
        $("#footer").addClass("on");
    } else {
        if (e.originalEvent.wheelDelta > 0) {
            if (!$("#footer").hasClass("on")) {
                $("#banner").removeClass("on");
            }
            $("#footer").removeClass("on");
            // swiper.enable(); 재시작 찾아야됨
            video.play();
        }
    }
});

// // 고객센터 customerList 클릭
// $(".customerList li").on("click", function () {
//   const num = $(this).index() + 1;
//   console.log(num);
//   $(this).addClass("on").siblings().removeClass("on");
//   $(".customerContents >li:nth-child(" + num + ")")
//     .addClass("on")
//     .siblings()
//     .removeClass("on");
// });

// 고객센터 faqContents question 클릭
$(".faqContents ul li").on("click", function () {
    $(this).toggleClass("on").siblings().removeClass("on");
});

// 고객센터 faqTab 클릭
$(".faqTab label input").on("change", function () {
    const num = $(this).val();
    if (num == 4) {
        $(".searchBox").addClass("off");
    } else {
        $(".searchBox").removeClass("off");
    }
    $(".faqContents >li:nth-of-type(" + num + ")")
        .addClass("on")
        .siblings()
        .removeClass("on");
    $(".faqContents ul li").removeClass("on");
    $(".faq .search").val("");
});

// 테이블 select 선택
$("form table .email").on("change", function () {
    const email = $(this).val();
    $(".domain").val(email);
});

// 탑 버튼
$("#main").on("wheel", (e) => {
    console.log(e.originalEvent);
});

// summernote
$("#summernote").summernote({
    height: 300,
    callbacks: {
        onImageUpload: function (files) {
            // files : 배열
            // 여러개 업로드를 원할 때
            for (let i = 0; i < files.length; i++) {
                uploadImage(files[i], this);
            }
        },
    },
});

function uploadImage(file, editor) {
    const sendData = new FormData();
    sendData.append("summerNoteImage", file); // summerNoteImage : controller에서 MultipartFile 이름과 같아야함
    $.ajax({
        url: "SummerNoteFileUpload",
        type: "post",
        data: sendData,
        contentType: false,
        processData: false,
        dataType: "json",
        success: function (res) {
            $(editor).summernote("editor.insertImage", res.url);
        },
        error: function () {
            alert("파일 업로드 실패");
        },
    });
}

//갤러리 swiper
const gallerySwiper = new Swiper(".gallerySwipe", {
    speed: 1000,
    //effect: "fade",
    loop: true,
    pagination: {
        el: ".bullet",
        type: "bullets",
        clickable: "true",
    },
    navigation: {
        prevEl: ".galleryLeft",
        nextEl: ".galleryRight",
    },
});

const swiperImg = new Swiper(".slider_wrap", {
    speed: 1000,
    //effect: "fade",
    loop: true,

    navigation: {
        prevEl: ".galleryLeft",
        nextEl: ".galleryRight",
    },
});

/*$(".btnTop").on("click", function () {
  gsap.to("html,body", { scrollTop: 0, duration: 0.5 });
});*/

// 갤러리 Map
var mapContainer = document.getElementById("map"), // 지도를 표시할 div
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 1, // 지도의 확대 레벨
    };

// 지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch("경기 이천시 모가면 사실로 988", function (result, status) {
    // 정상적으로 검색이 완료됐으면
    if (status === kakao.maps.services.Status.OK) {
        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        //alert(coords);

        var imageSrc = "../images/layout/header_logo.png", // 마커이미지의 주소입니다
            imageSize = new kakao.maps.Size(64, 64), // 마커이미지의 크기입니다
            imageOption = { offset: new kakao.maps.Point(32, 64) }; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

        // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
            markerPosition = coords; // 마커가 표시될 위치입니다

        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            position: markerPosition,
            image: markerImage, // 마커이미지 설정
        });

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);

        // 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
        var content = `<div class="customOverlay">
                    <a href="https://map.kakao.com/link/map/11394059" target="_blank">                        
                    </a>
                   </div>`;

        // 커스텀 오버레이가 표시될 위치입니다
        var position = coords;

        // 커스텀 오버레이를 생성합니다
        var customOverlay = new kakao.maps.CustomOverlay({
            map: map,
            position: position,
            content: content,
            yAnchor: 1,
        });

        map.setCenter(coords);
    }
});
