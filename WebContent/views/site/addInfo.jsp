<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="layout/_header.jsp" />

<script type="text/javascript">        
	$(document).ready(function () {             
		$("#contactform").validate({                 
					rules: {
						name: {required: true, minlength: 3},
						workplace: {required: true},
						email: {required: true, email: true},
						number: {required: true, number: true}
					},
					messages: {
						password: { required: "Không để trống !",	minlength: "Ít nhất 6 ký tự!" },                     
						email: { required: "Không để trống !"}
					}
				}); 

		
		}); 	
</script>
<div class="authorAddInfo">
	<div class="container">
		<div class="row">
			<div class="col-lg-2 col-md-2 col-sm-2">
				<!-- List group -->
				<c:choose>
					<c:when test="${user.userRole=='view'}">
						<jsp:include page="layout/_list-group-Viewer.jsp" />
					</c:when>
					<c:when test="${user.userRole=='author'}">
						<jsp:include page="layout/_list-group-Author.jsp" />
					</c:when>
					<c:when test="${user.userRole=='tester'}">
						<jsp:include page="layout/_list-group-Tester.jsp" />
					</c:when>
					<c:when test="${user.userRole=='editor'}">
						<jsp:include page="layout/_list-group-Editor.jsp" />
					</c:when>
					<c:when test="${user.userRole=='master'}">
						<jsp:include page="layout/_list-group-Master.jsp" />
					</c:when>
				</c:choose>
			</div>
			<!-- /List group -->
			<div class="col-lg-10 col-md-10 col-sm-10">
				<h4 class="mq_h4">Thông tin</h4>
				<form id="contactform" class="form-horizontal" method="post" id="contactform"   style="margin-top: 20px;">
					<div class="form-group">
						<label for="inputName" class="col-sm-2 control-label">Tên
							đầy đủ</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="name" name="name"
								placeholder="Họ và tên">
						</div>
					</div>
					<div class="form-group">
						<label for="inputLocation" class="col-sm-2 control-label">Đơn
							vị</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="workplace" name="workplace"
								placeholder="Đơn vị">
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail" class="col-sm-2 control-label">Email</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="email" name="email"
								placeholder="Email">
						</div>
					</div>
					<div class="form-group">
						<label for="inputTel" class="col-sm-2 control-label">Số
							điện thoại</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="number" name="number"
								placeholder="Số điện thoại">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="button"  id="contactbtn" class="btn btn-default">Xong</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<jsp:include page="layout/_footer.jsp"></jsp:include>