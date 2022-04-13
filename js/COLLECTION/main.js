const swiper = new Swiper(".sliderBox", {
  speed: 1000,
  //effect: "fade",
  loop: true,
  autoplay: {
    delay: 2500,
    disableOnInteraction: false,
  },
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

$(".start").on("click", function () {
  swiper.autoplay.start();
  $(".start").removeClass("on");
  $(".stop").addClass("on");
  return false;
});
$(".stop").on("click", function () {
  swiper.autoplay.stop();
  $(".stop").removeClass("on");
  $(".start").addClass("on");
  return false;
});

$(".firstLi .collection").on("click", function () {
  $(".BeautyrestMenu").removeClass("on");
  $(".collectionMenu").toggleClass("on");
  return false;
});

$(".firstLi .Beautyrest").on("click", function () {
  $(".collectionMenu").removeClass("on");
  $(".BeautyrestMenu").toggleClass("on");
  return false;
});

$(".sns a").on("click", function () {
  $(".sns ul").toggleClass("on");
  return false;
});

const scrollBox = new Swiper(".SliderScrollBox", {
  speed: 500,
  direction: "horizontal",
  slidesPerView: "auto",
  spaceBetween: 10,
  mousewheel: true,
  debugger: true,
  scrollbar: {
    el: ".swiper-scrollbar",
    draggable: true,
  },
});
