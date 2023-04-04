(function ($) {
  "use strict";

  $(document).on("change", ".upload", function () {
    var imgpath = $(this).parent().parent().parent().prev().find("img");
    readURL(this, imgpath);
  });

  function readURL(input, imgpath) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
        imgpath.attr("src", e.target.result);
      };
      reader.readAsDataURL(input.files[0]);
    }
  }



  function success(message) {
    Toast.fire({
      icon: "success",
      title: message,
    });
  }

  function error(message) {
    Toast.fire({
      icon: "error",
      title: message,
    });
  }

})(jQuery);
