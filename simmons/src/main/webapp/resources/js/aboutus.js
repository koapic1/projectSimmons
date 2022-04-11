$(".firstLi > a").on("click", function () {
    console.log("aaa");
    $(this).parent().toggleClass("open").siblings().removeClass("open");
    return false;
});
