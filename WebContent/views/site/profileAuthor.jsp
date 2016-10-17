<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp" />

<div class="author-Reviewer">
	<div class="container">
		<div class="row">
			<div class="col-lg-2 col-md-2 col-sm-2">
				<!-- List group -->
				<jsp:include page="layout/_list-group-Author.jsp"></jsp:include>
			</div>
			<div class="col-lg-10 col-md-10 col-sm-10">
				<!-- Post table -->
				<h4 class="mq_h4" style="margin: 0; padding: 0;">Các bài viết
					đã đăng</h4>
				<div class="mq_post_table">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>STT</th>
								<th>Tên bài báo</th>
								<th>Tên lĩnh vực</th>
								<th>Ngày cập nhật</th>
								<th>Chi tiết</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Ứng dụng CNTT</td>
								<td>Công nghệ thông tin</td>
								<td>1/1/2016</td>
								<td style="padding-left: 25px;"><a href="post.html" style=""><span
										class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
							</tr>
							<tr>
								<td>2</td>
								<td>Samsung sẽ sớm bán Note7 trở lại</td>
								<td>Viễn thông</td>
								<td>1/1/2016</td>
								<td style="padding-left: 25px;"><a href="post.html" style=""><span
										class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
							</tr>

							<tr>
								<td>3</td>
								<td>Máy rang ca cao</td>
								<td>Sản phẩm mới</td>
								<td>1/1/2016</td>
								<td style="padding-left: 25px;"><a href="post.html" style=""><span
										class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
							</tr>
							<tr>
								<td>4</td>
								<td>Trực thăng tự chế của kỹ sư Bình Dương</td>
								<td>Sản phẩm mới</td>
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

<jsp:include page="layout/_footer.jsp"></jsp:include>