(function ($) {
	"use strict";

	let loading = `<div class="text-center w-100">
                    <div class="border p-5" style="height: 350px">
                        <h4>LOADING...</h4>
                    </div>
                </div>`;

	$(document).ready(function () {
		$(".filter-btn").on("click", function () {
			$("#sidebar").toggleClass("active");
		});
		$(document).on("click", ".get__highlight__product", function () {
			$(".get__highlight__product").removeClass("active");
			$($(this)).addClass("active");
			$("#show__highlight__product").html(loading);
			var url = $(this).attr("data-href");
			$.ajax({
				url: url,
				type: "GET",
				success: function (data) {
					$("#show__highlight__product").html(data);
				},
			});
		});
	});

	$(document).on("click", ".product__color__attr", function () {
		$(".product__color__attr").removeClass("swatch-selected");
		$(this).addClass("swatch-selected");
		let color = $(this).attr("data-id");
		$("#store__color").val(color);
	});

	$(document).on("click", ".product__another__attr", function () {
		let attr = $(this).attr("attribute");
		$(".attribute" + attr + ".product__another__attr").removeClass(
			"swatch-selected"
		);
		$(this).addClass("swatch-selected");
		let attrs = getAttributeVariation();
		$("#store__size").val(attrs);
		setPrice();
	});
	let attr_price = 0;
	function getAttributeVariation() {
		let variation = [];
		attr_price = 0;
		$(".product__another__attr.swatch-selected").each(function () {
			variation.push($(this).attr("data-id"));
			attr_price += parseFloat($(this).attr("data-price"));
		});
		return variation;
	}

	$(document).on("click", ".quantity-button", function () {
		setPrice();
	});

	function setPrice() {
		var baseAmount = parseFloat($("#base__amount").val());
		var mainqty = parseFloat($("#main__qty").val());
		// not nan
		if (isNaN(mainqty)) {
			mainqty = 1;
		}
		var amount = baseAmount + parseFloat(attr_price);
		var total = amount * mainqty;
		$("#main__price").text(total.toFixed(2));
	}

	$(document).on("click", ".cart__item__remove", function () {
		let url = $(this).attr("data-href");
		let status = $(this).attr("referrerpolicy");
		let remove = $(this);
		let count = parseInt($("#cart_count").text());

		$.get(url, function (data) {
			if (status == 1) {
				$(".cart-popup").load($(".cart-popup").attr("data-href"));
				remove.parent().remove();
			} else {
				$("#show__cart").html(data);
			}
			count = count - 1;
			$("#cart_count,#cart_count1").text(count);
		});
	});

	var owl = $(".home-slider").owlCarousel({
		loop: true,
		nav: false,
		dots: true,
		items: 1,
		autoplay: true,
		margin: 0,
		animateIn: "fadeInDown",
		animateOut: "fadeOutUp",
		mouseDrag: false,
	});

	$(".nextBtn").click(function () {
		owl.trigger("next.owl.carousel", [300]);
	});
	$(".prevBtn").click(function () {
		owl.trigger("prev.owl.carousel", [300]);
	});

	// add to cart
	$(document).on("click", ".add__to__cart", function () {
		let url = $(this).attr("data-href");
		let productId = $(this).attr("itemid");
		// ajax request
		$.ajax({
			url: url,
			method: "POST",
			data: {
				_token: $("meta[name=csrf-token]").attr("content"),
				product_id: productId,
			},
			success: function (data) {
				console.log(data);
				$(".cart-popup").load($(".cart-popup").attr("data-href"));
				let count = parseInt($("#cart_count").text());
				count = count + 1;
				$("#cart_count,#cart_count1").text(count);
				success(data.success);
			},
		});
	});

	$(document).on("click", ".compare", function (e) {
		e.preventDefault();
		let  newcount = parseInt(parseInt($(".compare_count1").text()) + 1);
		$.get($(this).data("href"), function (data) {
			$("#compare-count").html(data[1]);
			$("#compare-count1").html(data[1]);
			if (data[0] == 0) {
				success(data["success"]);
				$(".compare_count").html(newcount);
			} else {
				error(data["error"]);
			}
		});
	});

	$(document).on("click", ".add__wishlist", function (e) {
		e.preventDefault();
		if ($(this).data("href")) {
			let  newcount = parseInt(parseInt($(".wishlist_count1").text()) + 1);
			$.get($(this).data("href"), function (data) {
				if (data.success) {
					success(data.success);
					$(".wishlist_count").html(newcount);
				} else {
					error(data.error);
				}
			});
		}
	});

	// review

	$(document).on("click", ".stars .star", function (e) {
		$(this).addClass("active");
		$(this).prevAll().addClass("active");
		$(this).nextAll().removeClass("active");
		let rating = $(this).attr("data-rating");
		$("#rating").val(rating);
	});

	$(document).on("submit", "#commentform", function (e) {
		e.preventDefault();
		let url = $(this).attr("action");
		let data = $(this).serialize();
		$.ajax({
			url: url,
			method: "POST",
			data: data,
			success: function (data) {
				if (data.success) {
					success(data.success);
					$("#commentform")[0].reset();
				} else {
					error(data.error);
				}
			},
		});
	});

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
