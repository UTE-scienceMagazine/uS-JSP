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
			<p class="time">Ngày đăng: ${text}</p>
			<p>${mess1}</p>
		
			<ul class="reply-comment-list">

			</ul>
			<!-- end reply-comment-list -->
			<fieldset style="margin-left: 10px; display: none" class="rep-form">
				<legend>Reply</legend>
				<form role="form">
					<div class="form-group">
						<label for="">Message</label>
						<textarea type="text" class="form-control rep-mess" id=""
							placeholder="Massage"></textarea>
					</div>
					<button type="submit" value="reply"
						class="reply-submit btn btn-primary">Reply</button>
				</form>
			</fieldset>
		</div>
		<!-- end col 11 -->
	</div> <!-- end row -->
</li>
<!-- end comments -->
