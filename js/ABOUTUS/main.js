$(window).on("scroll", function () {
  var scrTop = $(window).scrollTop();
  var wheel = e.originalEvent.wheelDelta;
  if (scrTop == $(document).height() - $(window).height()) {
    if (wheel < 0) {
      $(".wrap").css("transform", "translateY(0)");
    }
  } else {
  }
});
$(function () {
  $(".wrap").on;
});
var section2Offset = $(".wrap").offset();
$(window).scroll(function () {
  if ($(window).scrollTop() > section2Offset.top) {
    $(".wrap").attr("style", "transform: translateY(0)");
  } else {
    $(".wrap").attr("style", "transform: translateY(-2000px)");
  }
});
