<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
										<th style="text-align: center;">Tên bài báo</th>
										<th style="width:250px;text-align: center;"">Trạng thái</th>																				
										<th style="width:150px; text-align: center;">Ngày cập nhật</th>
										<th style="width:100px;text-align: center;">Chi tiết</th>
										<th style="width:100px;text-align: center;">Phản biện</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="l" items="${listArticle}" varStatus="loop" >
									<tr>
										<td>${loop.index +1}</td>
										<td>${l.title }</td>
										<td style="width:250px;"><select class="form-control mySelect"  onchange="changeSTTbyMaster()">
															<option value = -1>Không được đăng</option>
														    <option value = 1> Được đăng</option>
														    <option value = 2>Chuyển cho phản biện</option>
														    <option value = 3>Cần chỉnh sửa</option>
															<option value = 4>Đã chỉnh sửa</option>	
														  </select></td>	
										<script>
											var x = ${l.statusId};
											
											document.getElementsByClassName("mySelect")['${loop.index}'].selectedIndex = x;
										</script>																		
										<td style="width:150px; text-align: center;">${l.date }</td>
										<td  style="width:100px;text-align: center;"><a href="tester-comment.html?id=${l.id}">Xem</a></td>
										<td  style="width:100px;text-align: center;"><a href="feedback.html?id=${l.id}">Xem</a></td>
										
									</tr>
									</c:forEach>
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
														<th>Nhận xét</th>
													</tr>
												</thead>
												<tbody>
													
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
														<th>Nhận xét</th>
													</tr>
												</thead>
												<tbody>
													
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
														<th>Nhận xét</th>
													</tr>
												</thead>
												<tbody>
													
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

<!--  -->



<script>
	
	function changeSTTbyMaster() {

		var x = document.getElementById("mySelect").value;
		if (x == 1) {
			window.location = "listEditor.html";
		}
		if (x == 2) {
			window.location = "listEditor.html";

		}
	}
</script>

<jsp:include page="layout/_footer.jsp"></jsp:include>