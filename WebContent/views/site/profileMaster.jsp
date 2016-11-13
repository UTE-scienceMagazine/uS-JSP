<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp" />

<div class="profileMaster">
	<div class="container">
		<div class="row">
			
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
										<td style="width:250px;">
										<select class="form-control mySelect" id="mySelect${loop.index +1}" >
															<option value = -1>Không được đăng</option>
														    <option value = 1> Được đăng</option>
														    <option value = 2>Chuyển cho phản biện</option>
														    <option value = 3>Cần chỉnh sửa</option>
															<option value = 4>Đã chỉnh sửa</option>	
										</select></td>	
										<script>
											var x = ${l.statusId.id};
											var articleId${loop.index +1} = ${l.id}
											document.getElementsByClassName("mySelect")['${loop.index}'].selectedIndex = x;
											$( "#mySelect${loop.index +1}").change(function() {
												  var role = $("#mySelect${loop.index +1} option:selected").val();
												  if(role== 2 || role ==3)
													  {
													  window.location.replace("listaccount-by-role.html?role="+role+"&articleId="+articleId${loop.index +1})
													  }
												});
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

</script>

<jsp:include page="layout/_footer.jsp"></jsp:include>