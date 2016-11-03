$(function() {

	$(document).ready(function() {
		$("#txtEditor").Editor();
	});

	$('.dropdown').hover(function() {
		$(this).addClass('open');
	}, function() {
		$(this).removeClass('open');
	});

	$('.btn-group').click(function() {
		$(this).addClass('open');
	});

	$('.back-to-top').on('click', function(event) {
		$('body').animate({
			scrollTop : 0
		}, 400);
	});

	$('#comment').click(function(event) {
		$('.comment').toggleClass('hide');
	});

	$('#like').click(function(event) {
		$(this).toggleClass('change');
	});

	$('.back-to-top').addClass('hide');

	$(window).scroll(function(event) {
		var vitri = $('body').scrollTop();
		if (vitri > 450) {
			$('.back-to-top').removeClass('hide');
		} else if (vitri < 500) {
			$('.back-to-top').addClass('hide');
		}
		if (vitri > 250) {
			$('.header-mid').addClass('navbar-fixed-top fixtop');
		} else if (vitri <= 250) {
			$('.header-mid').removeClass('navbar-fixed-top fixtop');
		}
	});

	$('.topview .list-group .image').slideUp();
	$('.topview h3').click(function(event) {
		$('.topview .list-group .image').slideUp();
		$(this).next().slideToggle();

	});
	/* $('[data-toggle="tooltip"]').tooltip(); */
	$(document).ready(function() {
		$('a.ask-window').click(function() {
			// lấy giá trị thuộc tính href - chính là phần tử "#box"
			var Box = $(this).attr('href');

			// cho hiện hộp đăng nhập trong 300ms
			$(Box).fadeIn(300);

			// thêm phần tử id="over" vào sau body
			$('body').append('<div id="over">');
			$('#over').fadeIn(300);

			return false;
		});

		// khi click đóng hộp thoại
		$(document).on('click', "a.close, #over", function() {
			$('#over, .ask').fadeOut(300, function() {
				$('#over').remove();
			});
			return false;
		});

		$(document).on('click', "button.close, #over", function() {
			$('#over, .ask').fadeOut(300, function() {
				$('#over').remove();
			});
			return false;
		});
	});


	$(".rep-a").click(function() {
			id = $(this).attr("data-a");
			$(".rep-form"+id).slideToggle();
			
	});

	$(".com-submit").click(function() {

		m = $(".com-mess").val();

		$.ajax({
			type : "POST",
			url : "article.html",
			data : {
				mess : m,
			},
			async : true,
			success : function(response) {
				if ($('.comments-list  li').length == 0) {
					$('.comments-list').html(response);
				}else{
					$(".comments-list li:eq(0)").before(response);
				}
				

				$(".com-mess").val("");
				$(".com-name").val("");
			}
		});
		return false;
	});
	
	
	
	
	$(".reply-submit").click(function() {
		
		cid = $(this).attr("data-comid");
		m = $(".rep-mess" + cid).val();
		
		$.ajax({
			type : "POST",
			url : "reply.html",
			data : {
				mess : m,
				com_id : cid
			},
			async : true,
			success : function(response) {				
				if ($('.reply-comment-list' + cid + ' li').length == 0) {
					$(".reply-comment-list" + cid).html(response);
				} else {
					$(".reply-comment-list"+ cid + " li:eq(0)").before(response);
				}
				$(".rep-mess" + cid).val("");
				
			}
		});
		return false;
	});
});
