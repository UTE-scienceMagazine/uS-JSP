<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp" />

<div class="profileAdmin">
	<div class="container">
		<div class="row">
			<div class="buttons">
				<div class="row">
					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
						<button class="btn btn-default dropdown-toggle master_text"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
							style="color: red;">
							<b>Admin</b> <span class="glyphicon glyphicon-triangle-bottom"
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
							<a href="profile.html">
								<span class="glyphicon glyphicon-refresh" aria-hidden="true">								
								</span>
							</a>
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
						
						<button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">Add Account</button>
						<jsp:include page="layout/_modal-admin.jsp"></jsp:include>
						
					</div>
				</div>
			</div>
			<br>
			<div class="profile">
				<div class="row">
					<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
						<div class="list-group">
							<p class="list-group-item active">Dành cho Admin</p>
							<a href="#" class="list-group-item"> <span
								class="glyphicon glyphicon-bookmark" aria-hidden="true"
								style="float: left padding-right:10px;"> </span> Thông báo
							</a> 
							<a href="#" class="list-group-item"><span
								class="glyphicon glyphicon-pencil" aria-hidden="true"
								style="float: left padding-right:10px;"></span> Chỉnh sửa thông
								tin</a> 
							<a href="signout.html" class="list-group-item"><span
								class="glyphicon glyphicon-off" aria-hidden="true"
								style="float: left padding-right:10px;"></span> Đăng xuất</a>
						</div>
					</div>
					<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
						<h4 class="mq_h4">Danh sách tài khoản</h4>
						<table class="table table-striped">
							<thead>
								<tr>
									<th>STT</th>
									<th>Tên tài khoản</th>
									<th>Loại tài khoản</th>
									<th>Trạng thái</th>
									<th>Ngày tham gia</th>
									<th>Chi tiết</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>kunmaster001</td>
									<td>Tổng biên tập</td>
									<td>Hoạt động</td>
									<td>1/1/2016</td>
									<td style="padding-left: 25px;">
										<button  class="fa fa-pencil" data-toggle="modal" data-target="#myModal"></button>
										<!-- Modal -->
										<jsp:include page="layout/_modal-admin.jsp"></jsp:include>						
									</td>
								</tr>
								<tr>
									<td>2</td>
									<td>vueditor002</td>
									<td>Biên tập viên</td>
									<td>Hoạt động</td>
									<td>1/1/2016</td>
									<td style="padding-left: 25px;">
										<button  class="fa fa-pencil" data-toggle="modal" data-target="#myModal"></button>
										<!-- Modal -->
										<jsp:include page="layout/_modal-admin.jsp"></jsp:include>						
									</td>
								</tr>

								<tr>
									<td>3</td>
									<td>toantester003</td>
									<td>Phản biện</td>
									<td>Hoạt động</td>
									<td>1/1/2016</td>
									<td style="padding-left: 25px;">
										<button  class="fa fa-pencil" data-toggle="modal" data-target="#myModal"></button>
										<!-- Modal -->
										<jsp:include page="layout/_modal-admin.jsp"></jsp:include>						
									</td>
								</tr>
								<tr>
									<td>4</td>
									<td>khoiauthor004</td>
									<td>Tác giả</td>
									<td>Hoạt động</td>
									<td>1/1/2016</td>
									<td style="padding-left: 25px;">
										<button  class="fa fa-pencil" data-toggle="modal" data-target="#myModal"></button>
										<!-- Modal -->
										<jsp:include page="layout/_modal-admin.jsp"></jsp:include>						
									</td>
								</tr>
								<tr>
									<td>5</td>
									<td>khatester005</td>
									<td>Phản biện</td>
									<td>Khóa</td>
									<td>1/1/2016</td>
									<td style="padding-left: 25px;">
										<button  class="fa fa-pencil" data-toggle="modal" data-target="#myModal"></button>
										<!-- Modal -->
										<jsp:include page="layout/_modal-admin.jsp"></jsp:include>						
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="layout/_footer.jsp"></jsp:include>