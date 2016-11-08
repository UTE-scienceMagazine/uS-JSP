<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp" />

<div class="profileAdmin">
	<div class="container">
		<div class="row">
			<div class="buttons">


				<div class="row">
					<div class="col-md-4 col-md-push-4">

						<button type="button" class="btn btn-default" data-toggle="modal"
							data-target="#myModal">Add Account</button>
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
							</a> <a href="#" class="list-group-item"><span
								class="glyphicon glyphicon-pencil" aria-hidden="true"
								style="float: left padding-right:10px;"></span> Chỉnh sửa thông
								tin</a> <a href="signout.html" class="list-group-item"><span
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
								<c:forEach var="l" items="${list}">
									<tr>
										<td>${l.id}</td>
										<td>${l.email}</td>
										<td>${l.roleId.name }</td>
										<td><c:choose>
												<c:when test="${l.available ==1}">
													Hoạt động
												</c:when>
												<c:otherwise>
													Block
												</c:otherwise>
											</c:choose></td>
										<td><fmt:formatDate pattern="dd/MM/yyyy"
												value="${l.joinday}" /></td>
										<td style="padding-left: 25px;">
											<button class="fa fa-pencil" data-toggle="modal" data-target="#myModal${l.id}"></button> <!-- Modal -->
											<div id="myModal${l.id}" class="modal" role="dialog">
												<div class="modal-dialog">
													<!-- Modal content-->
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal">&times;</button>
															<h4 class="modal-title">Thông tin tài khoản</h4>
														</div>
														<div class="modal-body">
															<form action="admin.html" method="POST" role="form">
																<div class="form-group">
																
																	<label>Email</label>
																	<input type="text" class="form-control" id="email" name="email" value="${l.email}" placeholder="Email">
																
																	<label>Tên tài khoản</label> 
																	<input type="text" class="form-control" id="name" name="name" value="${l.name }" placeholder="Tên tài khoản"> 
																	
																	<label>Mật khẩu</label> 
																	<input type="password" class="form-control" id="password" name="password" value="${l.password}" placeholder="Mật khẩu"> 
																
																	<label>Số điện thoại</label>
																	<input type="text" class="form-control" id="phone" name="phone" value="${l.phone}" placeholder="Số điện thoại">
																	
																	<div class="row text-center">
																		<label class="radio-inline">
																		<input type="radio" value="2" name="users">Tester</label>
																		<label class="radio-inline"><input
																			type="radio" value="3" name="users">Author</label>
																		<label class="radio-inline"><input
																			type="radio" value="4" name="users">Editor</label>
																		<label class="radio-inline"><input
																			type="radio" value="5" name="users">Master</label>
																		<label class="radio-inline"><input
																			type="radio" value="6" name="users">Admin</label>
																		<label class="radio-inline"><input
																			type="radio" value="7" name="users">Block</label>
																	</div>
																	
																</div>
																<button value="add" class="btn btn-primary" name="command">Add</button>
																<button value="change" class="btn btn-primary" name="command">Change</button>
																<button value="delete" class="btn btn-warning" name="command">Delete</button>
																<button class=" modal-footer btn btn-danger" data-dismiss="modal">Close</button>

															</form>
														</div>

													</div>

												</div>
											</div>
										</td>
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
<jsp:include page="layout/_footer.jsp"></jsp:include>