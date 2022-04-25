$(".firstLi > a").on("click", function () {
    console.log("aaa");
    $(this).parent().toggleClass("open").siblings().removeClass("open");
    return false;
});
$(".miniLi > a").on("click", function () {
    console.log("aaa");
    $(this).parent().toggleClass("open").siblings().removeClass("open");
    return false;
});
