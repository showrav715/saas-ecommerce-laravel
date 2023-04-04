(function ($) {
	"user strict";
	$(window).on("load", function () {
		$(".loader").fadeOut(500);
		var img = $(".bg_img");
		img.css("background-image", function () {
			var bg = "url(" + $(this).data("img") + ")";
			return bg;
		});
	});
	$(document).ready(function () {
		$(".accordion-title").on("click", function (e) {
			var element = $(this).parent(".accordion-item");
			if (element.hasClass("open")) {
				element.removeClass("open");
				element.find(".accordion-content").removeClass("open");
				element.find(".accordion-content").slideUp(200, "swing");
			} else {
				element.addClass("open");
				element.children(".accordion-content").slideDown(200, "swing");
				element
					.siblings(".accordion-item")
					.children(".accordion-content")
					.slideUp(200, "swing");
				element.siblings(".accordion-item").removeClass("open");
				element
					.siblings(".accordion-item")
					.find(".accordion-title")
					.removeClass("open");
				element
					.siblings(".accordion-item")
					.find(".accordion-content")
					.slideUp(200, "swing");
			}
		});

		$(".counter-item").each(function () {
			$(this).isInViewport(function (e) {
				if ("entered" === e)
					for (
						var i = 0;
						i < document.querySelectorAll(".odometer").length;
						i++
					) {
						var n = document.querySelectorAll(".odometer")[i];
						n.innerHTML = n.getAttribute("data-odometer-final");
					}
			});
		});
		$("ul>li>.sub-nav").parent("li").addClass("parent-menu");
		$("ul")
			.parent("li")
			.hover(function () {
				var menu = $(this).find("ul");
				var menupos = $(menu).offset();
				if (menupos.left + menu.width() > $(window).width()) {
					var newpos = -$(menu).width();
					menu.css({
						left: newpos,
					});
				}
			});
		$(".nav-menu li a").on("click", function (e) {
			var element = $(this).parent("li");
			if (element.hasClass("open")) {
				element.removeClass("open");
				element.find("li").removeClass("open");
				element.find("ul").slideUp(300, "swing");
			} else {
				element.addClass("open");
				element.children("ul").slideDown(300, "swing");
				element.siblings("li").children("ul").slideUp(300, "swing");
				element.siblings("li").removeClass("open");
				element.siblings("li").find("li").removeClass("open");
				element.siblings("li").find("ul").slideUp(300, "swing");
			}
		});
		var scrollTop = $(".toTopBtn");
		$(window).on("scroll", function () {
			if ($(this).scrollTop() < 500) {
				scrollTop.removeClass("active");
			} else {
				scrollTop.addClass("active");
			}
		});
		$(".toTopBtn").on("click", function () {
			$("html, body").animate(
				{
					scrollTop: 0,
				},
				500
			);
			return false;
		});
		$(".nav-toggle").on("click", function () {
			$(this).toggleClass("active");
			$(".overlayer").toggleClass("active");
			$(".nav-menu-area").toggleClass("active");
		});
		$(".overlayer, .menu-close").on("click", function () {
			$(".overlayer, .menu-close").removeClass("active");
			$(".nav-toggle").removeClass("active");
			$(".nav-menu-area").removeClass("active");
		});
		var fixed_top = $(".navbar-bottom");
		$(window).on("scroll", function () {
			if ($(this).scrollTop() > 1) {
				fixed_top.addClass("bg--section active");
			} else {
				fixed_top.removeClass("bg--section active");
			}
		});
		$(".testimonial-slider").owlCarousel({
			items: 1,
			loop: true,
			autoplay: true,
			margin: 0,
			nav: true,
			smartSpeed: 800,
			autoplayTimeout: 3000,
			dots: true,
			navText: [
				'<i class="fas fa-arrow-left"></i>',
				'<i class="fas fa-arrow-right"></i>',
			],
			responsive: {
				992: {
					items: 1,
				},
				768: {
					items: 1,
				},
			},
		});
		$(".sponsor-slider").owlCarousel({
			items: 2,
			autoplay: true,
			margin: 14,
			responsive: {
				576: {
					items: 3,
				},
				768: {
					items: 4,
				},
				992: {
					items: 5,
				},
				1200: {
					items: 7,
				},
			},
		});
	});

	$(".btn-accept").on("click", function () {
        $(".cookie-bar-wrap").removeClass("show");
        $(".cookie-bar-wrap").addClass("hide");
      });
})(jQuery);
