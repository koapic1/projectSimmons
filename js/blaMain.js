const swiper = new Swiper(".mainSlider", {
    autoplay: true,
    speed: 500,
    effect: "fade",
    loop: true,
    pagination: {
        el: "#mainSlider .page",
        type: "bullets",
        clickable: true,
    },
    navigation: {
        nextEl: ".pageRight",
        prevEl: ".pageLeft",
    },
});

const productSlider = new Swiper("#product .list", {
    speed: 600,
    slidesPerView: 3, //화면에 보여지는 갯수
    slidesPerGroup: 3, //묶음
});
