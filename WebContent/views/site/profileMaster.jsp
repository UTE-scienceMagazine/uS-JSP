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
							<b>Master</b> <span class="glyphicon glyphicon-triangle-bottom"
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
				
			</div>
			<br>
			<div class="profile">
				<div class="row">
					<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
						<jsp:include page="layout/_list-group-Master.jsp"></jsp:include>
					</div>
					<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
						<div class="row">
							
								<ul class="nav nav-tabs">
									<li class="active""><a data-toggle="tab" href="#home">Chính</a></li>
									<li><a data-toggle="tab" href="#menu1">Công nghệ thông
											tin</a></li>
									<li><a data-toggle="tab" href="#menu2">Điện tử - Viễn
											thông</a></li>
									<li><a data-toggle="tab" href="#menu3">Sản phẩm mới</a></li>
								</ul>

								<div class="tab-content">
									<!-- Table main -->
									<div id="home" class="tab-pane fade in active">
										<table class="table table-striped">
											<thead>
												<tr>
													<th>STT</th>
													<th>Tên bài báo</th>
													<th>Tên lĩnh vực</th>
													<th>Trạng thái</th>
													<th>Ngày cập nhật</th>
													<th>Chi tiết</th>
													<th>Nhận xét</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>Ứng dụng CNTT</td>
													<td>Công nghệ thông tin</td>
													<td>
													<select class="form-control" id="mySelect" onchange="changeSTTbyMaster()">
														    <option value = 0> Được đăng</option>
														    <option value = 0>Cần chỉnh sửa</option>
														    <option value = 0  selected="selected">Không được đăng</option>
														    <option value = 1>Chuyển cho biên tập viên</option>
															<option value = 2>Chuyển cho phản biện</option>
														 </select></td>
													<td>1/1/2016</td>
													<td style="padding-left: 25px;"><a href="Article.html" style=""><span
															class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
													<td style="padding-left: 25px;"><a class="ask-window" href="#ask-box" style=""><span
																	class="glyphicon glyphicon-comment" aria-hidden="true"></span></a></td>		
												</tr>
												<tr>
													<td>2</td>
													<td>Samsung sẽ sớm bán Note7 trở lại</td>
													<td>Viễn thông</td>
													<td><select class="form-control" id="mySelect" onchange="changeSTTbyMaster()">
														    <option value = 0> Được đăng</option>
														    <option value = 0>Cần chỉnh sửa</option>
														    <option value = 0  selected="selected">Không được đăng</option>
														    <option value = 1>Chuyển cho biên tập viên</option>
															<option value = 2>Chuyển cho phản biện</option>
														  </select></td>
													<td>1/1/2016</td>
													<td style="padding-left: 25px;"><a  href="kArticle.html" style=""><span
															class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
													<td style="padding-left: 25px;"><a class="ask-window" href="#ask-box" style=""><span
																	class="glyphicon glyphicon-comment" aria-hidden="true"></span></a></td>
												</tr>

												<tr>
													<td>3</td>
													<td>Máy rang ca cao</td>
													<td>Sản phẩm mới</td>
													<td><select class="form-control" id="mySelect" onchange="changeSTTbyMaster()">
														   <option value = 0> Được đăng</option>
														    <option value = 0>Cần chỉnh sửa</option>
														    <option value = 0  selected="selected">Không được đăng</option>
														    <option value = 1>Chuyển cho biên tập viên</option>
															<option value = 2>Chuyển cho phản biện</option>
														  </select></td>
													<td>1/1/2016</td>
													<td style="padding-left: 25px;"><a  href="checkArticle.html"style=""><span
															class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
													<td style="padding-left: 25px;"><a class="ask-window" href="#ask-box" style=""><span
																	class="glyphicon glyphicon-comment" aria-hidden="true"></span></a></td>
												</tr>
												<tr>
													<td>4</td>
													<td>Trực thăng tự chế của kỹ sư Bình Dương</td>
													<td>Sản phẩm mới</td>
													<td><select class="form-control" id="mySelect" onchange="changeSTTbyMaster()">
														   <option value = 0> Được đăng</option>
														    <option value = 0>Cần chỉnh sửa</option>
														    <option value = 0  selected="selected">Không được đăng</option>
														    <option value = 1>Chuyển cho biên tập viên</option>
															<option value = 2>Chuyển cho phản biện</option>
														  </select></td>
													<td>1/1/2016</td>
													<td style="padding-left: 25px;"><a  href="checkArticle.html"style=""><span
															class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
													<td style="padding-left: 25px;"><a class="ask-window" href="#ask-box" style=""><span
																	class="glyphicon glyphicon-comment" aria-hidden="true"></span></a></td>		
												</tr>
											</tbody>
										</table>

									</div>
									<div id="menu1" class="tab-pane fade">
										<div class="tab-content">
											<div id="home" class="tab-pane fade in active">
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
															<td>
																<select class="form-control" id="mySelect" onchange="changeSTTbyMaster()">
															    <option value = 0>Cần chỉnh sửa</option>
															    <option value = 0  selected="selected">Không được đăng</option>
															    <option value = 1>Chuyển cho biên tập viên</option>
																<option value = 2>Chuyển cho phản biện</option>
															  	</select>
															 </td>
															<td>1/1/2016</td>
															<td style="padding-left: 25px;"><a href="checkArticle.html" style=""><span
																	class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
														</tr>
														<tr>
															<td>2</td>
															<td>Samsung sẽ sớm bán Note7 trở lại</td>
															<td>Viễn thông</td>
															<td>
																<select class="form-control" id="mySelect" onchange="changeSTTbyMaster()">
															    <option value = 0>Cần chỉnh sửa</option>
															    <option value = 0  selected="selected">Không được đăng</option>
															    <option value = 1>Chuyển cho biên tập viên</option>
																<option value = 2>Chuyển cho phản biện</option>
															  	</select>
															 </td>
															<td>1/1/2016</td>
															<td style="padding-left: 25px;"><a  href="checkArticle.html" style=""><span
																	class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
														</tr>

														<tr>
															<td>3</td>
															<td>Máy rang ca cao</td>
															<td>Sản phẩm mới</td>
															<td>
																<select class="form-control" id="mySelect" onchange="changeSTTbyMaster()">
															    <option value = 0>Cần chỉnh sửa</option>
															    <option value = 0  selected="selected">Không được đăng</option>
															    <option value = 1>Chuyển cho biên tập viên</option>
																<option value = 2>Chuyển cho phản biện</option>
															  	</select>
															 </td>
															<td>1/1/2016</td>
															<td style="padding-left: 25px;"><a  href="checkArticle.html" style=""><span
																	class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
														</tr>
														<tr>
															<td>4</td>
															<td>Trực thăng tự chế của kỹ sư Bình Dương</td>
															<td>Sản phẩm mới</td>
															<td>
																<select class="form-control" id="mySelect" onchange="changeSTTbyMaster()">
															    <option value = 0>Cần chỉnh sửa</option>
															    <option value = 0  selected="selected">Không được đăng</option>
															    <option value = 1>Chuyển cho biên tập viên</option>
																<option value = 2>Chuyển cho phản biện</option>
															  	</select>
															 </td>
															<td>1/1/2016</td>
															<td style="padding-left: 25px;"><a  href="checkArticle.html" style=""><span
																	class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
														</tr>
													</tbody>
												</table>


											</div>
										</div>
									</div>
									<div id="menu2" class="tab-pane fade">
										<div class="tab-content">
											<div id="home" class="tab-pane fade in active">
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
															<td>
																<select class="form-control" id="mySelect" onchange="changeSTTbyMaster()">
															    <option value = 0>Cần chỉnh sửa</option>
															    <option value = 0  selected="selected">Không được đăng</option>
															    <option value = 1>Chuyển cho biên tập viên</option>
																<option value = 2>Chuyển cho phản biện</option>
															  	</select>
															 </td>
															<td>1/1/2016</td>
															<td style="padding-left: 25px;"><a  href="checkArticle.html" style=""><span
																	class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
														</tr>
														<tr>
															<td>2</td>
															<td>Samsung sẽ sớm bán Note7 trở lại</td>
															<td>Viễn thông</td>
															<td>
																<select class="form-control" id="mySelect" onchange="changeSTTbyMaster()">
															    <option value = 0>Cần chỉnh sửa</option>
															    <option value = 0  selected="selected">Không được đăng</option>
															    <option value = 1>Chuyển cho biên tập viên</option>
																<option value = 2>Chuyển cho phản biện</option>
															  	</select>
															 </td>
															<td>1/1/2016</td>
															<td style="padding-left: 25px;"><a  href="checkArticle.html" style=""><span
																	class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
														</tr>

														<tr>
															<td>3</td>
															<td>Máy rang ca cao</td>
															<td>Sản phẩm mới</td>
															<td>
																<select class="form-control" id="mySelect" onchange="changeSTTbyMaster()">
															    <option value = 0>Cần chỉnh sửa</option>
															    <option value = 0  selected="selected">Không được đăng</option>
															    <option value = 1>Chuyển cho biên tập viên</option>
																<option value = 2>Chuyển cho phản biện</option>
															  	</select>
															 </td>
															<td>1/1/2016</td>
															<td style="padding-left: 25px;"><a  href="checkArticle.html" style=""><span
																	class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
														</tr>
														<tr>
															<td>4</td>
															<td>Trực thăng tự chế của kỹ sư Bình Dương</td>
															<td>Sản phẩm mới</td>
															<td>
																<select class="form-control" id="mySelect" onchange="changeSTTbyMaster()">
															    <option value = 0>Cần chỉnh sửa</option>
															    <option value = 0  selected="selected">Không được đăng</option>
															    <option value = 1>Chuyển cho biên tập viên</option>
																<option value = 2>Chuyển cho phản biện</option>
															  	</select>
															 </td>
															<td>1/1/2016</td>
															<td style="padding-left: 25px;"><a  href="checkArticle.html" style=""><span
																	class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
														</tr>
													</tbody>
												</table>

											</div>
										</div>
									</div>
									<div id="menu3" class="tab-pane fade">
										<div class="tab-content">
											<div id="home" class="tab-pane fade in active">
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
															<td>
																<select class="form-control" id="mySelect" onchange="changeSTTbyMaster()">
															    <option value = 0>Cần chỉnh sửa</option>
															    <option value = 0  selected="selected">Không được đăng</option>
															    <option value = 1>Chuyển cho biên tập viên</option>
																<option value = 2>Chuyển cho phản biện</option>
															  	</select>
															 </td>
															<td>1/1/2016</td>
															<td style="padding-left: 25px;"><a  href="checkArticle.html" style=""><span
																	class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
														</tr>
														<tr>
															<td>2</td>
															<td>Samsung sẽ sớm bán Note7 trở lại</td>
															<td>Viễn thông</td>
															<td>
																<select class="form-control" id="mySelect" onchange="changeSTTbyMaster()">
															    <option value = 0>Cần chỉnh sửa</option>
															    <option value = 0  selected="selected">Không được đăng</option>
															    <option value = 1>Chuyển cho biên tập viên</option>
																<option value = 2>Chuyển cho phản biện</option>
															  	</select>
															 </td>
															<td>1/1/2016</td>
															<td style="padding-left: 25px;"><a  href="checkArticle.html" style=""><span
																	class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
														</tr>

														<tr>
															<td>3</td>
															<td>Máy rang ca cao</td>
															<td>Sản phẩm mới</td>
															<td>
																<select class="form-control" id="mySelect" onchange="changeSTTbyMaster()">
															    <option value = 0>Cần chỉnh sửa</option>
															    <option value = 0  selected="selected">Không được đăng</option>
															    <option value = 1>Chuyển cho biên tập viên</option>
																<option value = 2>Chuyển cho phản biện</option>
															  	</select>
															 </td>
															<td>1/1/2016</td>
															<td style="padding-left: 25px;"><a  href="checkArticle.html" style=""><span
																	class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
														</tr>
														<tr>
															<td>4</td>
															<td>Trực thăng tự chế của kỹ sư Bình Dương</td>
															<td>Sản phẩm mới</td>
															<td>
																<select class="form-control" id="mySelect" onchange="changeSTTbyMaster()">
															    <option value = 0>Cần chỉnh sửa</option>
															    <option value = 0  selected="selected">Không được đăng</option>
															    <option value = 1>Chuyển cho biên tập viên</option>
																<option value = 2>Chuyển cho phản biện</option>
															  	</select>
															 </td>
															<td>1/1/2016</td>
															<td style="padding-left: 25px;"><a  href="checkArticle.html" style=""><span
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
			</div>
		</div>
	</div>
</div>
<div class="row"><!-- Ask box -->
			<div class="ask" id="ask-box" style="top:30%; left:60%;">
				<a class="close" href="#"><img class="img-close" alt="Close" src="images/close.png" style=""/></a>
					<p style="text-align: center; color: blue; font-weight: bolder; font-size:25px;">
						Nhận xét
					</p>

					<p style="text-align: center; color: blue; font-weight: bolder;"><i>Tiêu đề:</i> Samsung sẽ sớm bán Note7 trở lại</br></br>
							<i>Tóm tắt:</i> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fermentum auctor aliquet. </br></br>
							<i>Ý nghĩa bài viết:</i> Suspendisse ac ante sed libero.</br></br>
							<i>Nội dung có tồn tại trên ấn phẩm khác hay không?</i> Bài viết không tồn tại trên ấn phẩm khác.</br></br>
							<i>Kết luận:</i> Đồng ý cho bài viết được đăng.</br></br>
							<i>Nội dung cần chỉnh sửa lại</i>: Không.</br></br>
						</br> --Kun1-Tester--
						</p>
					<a class="close btn btn-default btnclose" href="#" style="margin-left:165px;">Đồng ý</a>
		</div>
		<!-- end row -->
<script>
function changeSTTbyMaster() 
{

	var x = document.getElementById("mySelect").value;
	if(x ==1 )
	{
		window.location = "listEditor.html";
	}
	if(x==2)
	{
		window.location = "listEditor.html";

	}
}
</script>

<jsp:include page="layout/_footer.jsp"></jsp:include>