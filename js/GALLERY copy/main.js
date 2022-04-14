const swiper = new Swiper(".gallerySwipe", {
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

$(".btnTop").on("click", function () {
  gsap.to("html,body", { scrollTop: 0, duration: 0.5 });
});
