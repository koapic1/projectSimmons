$("ul.minMenu li:nth-child(1) a").on("click", function (e) {
  if ($(this).closest("ul").attr("id") != "ul_menu") {
    e.preventDefault();
    document.location.href = "/";
  }
});
$("#menu").on("click", () => {
  $("#gnb").addClass("on");
  $(".cartBox").removeClass("on");
  $(".closePage").addClass("on");
});
