
<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:useBean id="now" class="java.util.Date" />

<jsp:include page="layout/_header.jsp" />

<script type="text/javascript">
	$(document).ready(function() {
		$("#formChangeInfo").validate({
			rules : {
				name : {
					required : true,
					
				},
				phone:{
					required : true,
					minlength: 10
				},
			},
			messages : {
				phone : {
					required : "Không để trống !",
					minlength : "Ít nhất 10 số!"
				},
				name : {
					required : "Không để trống !"
				}
			}
		});

	});
</script>
<div class="profileViewer">
	<div class="container">
		<div class="row">
			<br>
			<div class="profile">
				<div class="row">
					<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
						<c:choose>
							<c:when test="${user.roleId.id == 1}">
								<jsp:include page="layout/_list-group-Viewer.jsp" />
							</c:when>
							<c:otherwise>
								<div class="list-group">
									<div class="list-group">
										<p class="list-group-item active">Dành cho nhân viên</p>
										
										<a href="profile.html" class="list-group-item">
										<span class="glyphicon glyphicon-arrow-left" aria-hidden="true"
											style="float: left padding-right:10px;">
										</span> Quay lại</a>
										 <a
											href="signout.html" class="list-group-item"><span
											class="glyphicon glyphicon-off" aria-hidden="true"
											style="float: left padding-right:10px;"></span> Đăng xuất</a>
									</div>
								</div>
							</c:otherwise>
						</c:choose>
						
					</div>
					<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
						<div class="row">
							<form id="formChangeInfo" action="profile.html" method="POST"
								role="form" >
								<h4 class="mq_h4">Thông tin tài khoản</h4>
								<div class="col-lg-5 mq_leftrow_inf ">
									<p>Thông tin liên hệ</p>
								</div>
								<div class="col-lg-5 mq_rightform_label">
									<!-- Contact info -->
									<div class="form-group" style="width: 450px;">
										<label for="name">Tên</label>
										 <input type="text" name="name" class="form-control" placeholder="Tên" id="name" value="${user.name}">
										<label for="number">Điện thoại</label> 
										<input type="number" name="phone" class="form-control" placeholder="Điện thoại" id="phone" value="${user.phone }">
									</div>
									<hr>
								</div>
								<!-- /Contact info-->

								<div class="col-lg-5 mq_leftrow_inf ">
									<p>Thông tin cá nhân</p>
								</div>
								<div class="col-lg-5 mq_rightform_label">
									<!-- Person info -->
									<div class="form-group" style="width: 450px;">
										<!--Form group -->
										<div class="form-group">
											<!--Gender select -->
											<lable for="name" style="font-weight:bold;">Giới tính</lable>
											<div class="mq_gender_select">

												<label class="radio-inline">
												<input type="radio" value="1" name="sex" checked="checked"> Nam</label>
												<label	class="radio-inline">
												<input type="radio"	value="-1" name="sex">Nữ</label>

											</div>
										</div>
										<!-- / Gender select -->
										<div class="form_group birthday">
											<!-- Birth day -->
											<label>Ngày sinh</label> 
											<fmt:formatDate pattern="dd/MM/yyyy" var="date" value="${user.birthday}" />
											<input name="birthday"class="form-control"	id="birthday" value="${date}">
										</div>
										<!-- /Birth day -->
										<label for="id_number">Chứng minh nhân dân</label> 
										
										<input name="identitycard" type="number" placeholder="Chứng minh nhân dân"
											class="form-control" id="identitycard" value="${user.identitycard}">
									</div>
									<!-- /Form group -->
									
									<button type="submit" class="btn btn-primary" >Lưu</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="layout/_footer.jsp"></jsp:include>