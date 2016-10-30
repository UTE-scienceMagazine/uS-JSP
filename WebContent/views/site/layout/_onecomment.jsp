<%@page contentType="text/html" pageEncoding="UTF-8"%>

<li class="comments">
	<div class="row comments">
		<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
			<img src="images/images.png" class="img-responsive" alt="Image">
		</div>
		<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
			<div class="info">
				<p>
					${user.email}<small><a href="javascript:void(0)"
						class="rep-a" data-a="#">Reply</a></small>
				</p>
			</div>
			<p>${mess1}</p>
			<p class="time">Ngày đăng: ${text}</p>

			<ul class="reply-comment-list">
				
			</ul>
			<!-- end reply-comment-list -->
			<jsp:include page="_reply-form.jsp"></jsp:include>
		</div>
		<!-- end col 11 -->
	</div> <!-- end row -->
</li>
<!-- end comments -->
