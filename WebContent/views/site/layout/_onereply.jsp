<%@page contentType="text/html" pageEncoding="UTF-8"%>

<li class="reply-commet">
	<div class="row">
		<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
			<img src="images/images.png" class="img-responsive" alt="Image">
		</div>
		<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
			<div class="info">
				<p>${user.email}</p>
			</div>
			<p class="time">Ngày đăng:  ${text}</p>
			<p>${mess1 }</p>
			
		</div>
	</div>
</li>