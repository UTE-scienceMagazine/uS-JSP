<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp" />

<div class="profileMaster">
	<div class="container">
		<div class="row">
			<div class="buttons">
				<div class="row">
					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
						<button class="btn btn-default dropdown-toggle master_text"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
							style="color: red;">
							<b>Tester</b> <span class="glyphicon glyphicon-triangle-bottom"
								aria-hidden="true"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Chỉnh sửa</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
						<!-- End dropdown -->


					</div>
					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">

						<!--Select All -->
						<button class="btn btn-default">
							<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
							Chọn tất cả
						</button>
						<!-- End select all -->

						<!-- Refesh -->
						<button class="btn btn-default" style="margin-left: 20px;">
							<span class="glyphicon glyphicon-refresh" aria-hidden="true"></span>
						</button>
						<!-- end sl all-->

						<!-- Trans to tester -->
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
						<div class="mq_float_right">
							<!--Setting-->
							<button class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
								Cài đặt <span class="glyphicon glyphicon-triangle-bottom"
									aria-hidden="true"></span>
							</button>
							<ul class="dropdown-menu mq_float_right mq-dropdown-menu">
								<li><a href="#">Sometext</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">Separated link</a></li>
							</ul>
						</div>
						<!-- End Setting -->
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 col-md-push-4">
						<button class="btn btn-default dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
							style="margin-right: 630px">
							<span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
							Tác vụ khác <span class="glyphicon glyphicon-triangle-bottom"
								aria-hidden="true"></span>
						</button>
						<ul class="dropdown-menu mq_float_right mq-dropdown-menu "
							style="transform: translateX(0%) translateY(-10%);">
							<li><a href="#">Gửi phản biện cho tổng biên tập</a></li>
							<li><a href="#">Gửi phản biện cho tác giả</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
						<!-- End some action -->
					</div>
				</div>
			</div>
			<br>
			<div class="profile">
				<div class="row">
					<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
						<jsp:include page="layout/_list-group-Tester.jsp"/>
					</div>
					<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
						<div class="row">
							<h4 class="mq_h4">Danh sách bài viết</h4>
							<table class="table table-striped">
								<thead>
									<tr>
										<th>STT</th>
										<th>Tên bài báo</th>
										<th>Tên lĩnh vực</th>
										<th>Trạng thái</th>
										<th>Ngày cập nhật</th>
										<th>Chi tiết</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Ứng dụng CNTT</td>
										<td>Công nghệ thông tin</td>
										<td>Chuyển cho phản biện</td>
										<td>1/1/2016</td>
										<td style="padding-left: 25px;"><a href="post.html" style=""><span
												class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
									</tr>
									<tr>
										<td>2</td>
										<td>Samsung sẽ sớm bán Note7 trở lại</td>
										<td>Viễn thông</td>
										<td>Chuyển cho phản biện</td>
										<td>1/1/2016</td>
										<td style="padding-left: 25px;"><a href="post.html" style=""><span
												class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
									</tr>

									<tr>
										<td>3</td>
										<td>Máy rang ca cao</td>
										<td>Sản phẩm mới</td>
										<td>Chuyển cho phản biện</td>
										<td>1/1/2016</td>
										<td style="padding-left: 25px;"><a href="post.html" style=""><span
												class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
									</tr>
									<tr>
										<td>4</td>
										<td>Trực thăng tự chế của kỹ sư Bình Dương</td>
										<td>Sản phẩm mới</td>
										<td>Chuyển cho phản biện</td>
										<td>1/1/2016</td>
										<td style="padding-left: 25px;"><a href="post.html" style=""><span
												class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
									</tr>
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="layout/_footer.jsp"></jsp:include>