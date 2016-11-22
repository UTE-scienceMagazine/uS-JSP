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
								<li><a data-toggle="tab" href="#menu2">Tự động hóa</a></li>
								<li><a data-toggle="tab" href="#menu3">Trí tuệ nhân tạo</a></li>
								<li><a data-toggle="tab" href="#menu4">Điện tử</a></li>
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
											var articleId${loop.index +1} = ${l.id};
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
														<th style="text-align: center;">Tên bài báo</th>
														<th style="width:250px;text-align: center;"">Trạng thái</th>																				
														<th style="width:150px; text-align: center;">Ngày cập nhật</th>
														<th style="width:100px;text-align: center;">Chi tiết</th>
														<th style="width:100px;text-align: center;">Phản biện</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="l" items="${listArticleIT}" varStatus="loop" >
														<tr>
															<td>${loop.index +1}</td>
															<td>${l.title }</td>
															<td style="width:250px;">
															<select class="form-control mySelect1" id="1mySelect${loop.index +1}" >
																				<option value = 2>Không được đăng</option>
																			    <option value = 1> Được đăng</option>
																			    <option value = 3>Chuyển cho phản biện</option>
																			    <option value = 4>Cần chỉnh sửa</option>
																				<option value = 5>Đã chỉnh sửa</option>	
															</select></td>	
															<script>
																var x1 = ${l.statusId.id};
																var article_1_Id${loop.index +1} = ${l.id};
																document.getElementsByClassName("mySelect1")['${loop.index}'].selectedIndex = x1;
																$( "#1mySelect${loop.index +1}").change(function() {
																	  var role = $("#1mySelect${loop.index +1} option:selected").val();
																	  if(role== 3 || role ==4)
																		  {
																		  window.location.replace("listaccount-by-role.html?role="+role+"&articleId="+article_1_Id${loop.index +1})
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
									</div>
								</div>
								<div id="menu2" class="tab-pane fade">
									<div class="tab-content">
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
													<c:forEach var="l" items="${listArticleAT}" varStatus="loop" >
														<tr>
															<td>${loop.index +1}</td>
															<td>${l.title }</td>
															<td style="width:250px;">
															<select class="form-control mySelect2" id="2mySelect${loop.index +1}" >
																				<option value = -1>Không được đăng</option>
																			    <option value = 1> Được đăng</option>
																			    <option value = 2>Chuyển cho phản biện</option>
																			    <option value = 3>Cần chỉnh sửa</option>
																				<option value = 4>Đã chỉnh sửa</option>	
															</select></td>	
															<script>
																var x2 = ${l.statusId.id};
																var article_2_Id${loop.index +1} = ${l.id}
																document.getElementsByClassName("mySelect2")['${loop.index}'].selectedIndex = x2;
																$( "#2mySelect${loop.index +1}").change(function() {
																	  var role = $("#2mySelect${loop.index +1} option:selected").val();
																	  if(role== 3 || role ==4)
																		  {
																		  window.location.replace("listaccount-by-role.html?role="+role+"&articleId="+article_2_Id${loop.index +1})
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
									</div>
								</div>
								<div id="menu3" class="tab-pane fade">
									<div class="tab-content">
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
													<c:forEach var="l" items="${listArticleAI}" varStatus="loop" >
														<tr>
															<td>${loop.index +1}</td>
															<td>${l.title }</td>
															<td style="width:250px;">
															<select class="form-control mySelect3" id="3mySelect${loop.index +1}" >
																				<option value = 2>Không được đăng</option>
																			    <option value = 1> Được đăng</option>
																			    <option value = 3>Chuyển cho phản biện</option>
																			    <option value = 4>Cần chỉnh sửa</option>
																				<option value = 5>Đã chỉnh sửa</option>	
															</select></td>	
															<script>
																var x3 = ${l.statusId.id};
																var article_3_Id${loop.index +1} = ${l.id};
																document.getElementsByClassName("mySelect3")['${loop.index}'].selectedIndex = x3;
																$( "#3mySelect${loop.index +1}").change(function() {
																	  var role = $("#3mySelect${loop.index +1} option:selected").val();
																	  if(role== 3 || role ==4)
																		  {
																		  window.location.replace("listaccount-by-role.html?role="+role+"&articleId="+article_3_Id${loop.index +1})
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
									</div>
								</div>
								<div id="menu4" class="tab-pane fade">
									<div class="tab-content">
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
													<c:forEach var="l" items="${listArticleET}" varStatus="loop" >
														<tr>
															<td>${loop.index +1}</td>
															<td>${l.title }</td>
															<td style="width:250px;">
															<select class="form-control mySelect4" id="4mySelect${loop.index +1}" >
																				<option value = 2>Không được đăng</option>
																			    <option value = 1> Được đăng</option>
																			    <option value = 3>Chuyển cho phản biện</option>
																			    <option value = 4>Cần chỉnh sửa</option>
																				<option value = 5>Đã chỉnh sửa</option>	
															</select></td>	
															<script>
																var x4 = ${l.statusId.id};
																var article_4_Id${loop.index +1} = ${l.id};
																document.getElementsByClassName("mySelect4")['${loop.index}'].selectedIndex = x4;
																$( "#4mySelect${loop.index +1}").change(function() {
																	  var role = $("#4mySelect${loop.index +1} option:selected").val();
																	  if(role== 3 || role ==3)
																		  {
																		  window.location.replace("listaccount-by-role.html?role="+role+"&articleId="+article_4_Id${loop.index +1})
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