<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="layout/_header.jsp" />

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
							<input type="Text" class="form-control" id="inputName3"
								placeholder="Họ và tên">
						</div>
					</div>
					<div class="form-group">
						<label for="inputLocation" class="col-sm-2 control-label">Đơn
							vị</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputText3"
								placeholder="Đơn vị">
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail" class="col-sm-2 control-label">Email</label>
						<div class="col-sm-10">
							<input type="Email" class="form-control" id="inputEmail3"
								placeholder="Email">
						</div>
					</div>
					<div class="form-group">
						<label for="inputTel" class="col-sm-2 control-label">Số
							điện thoại</label>
						<div class="col-sm-10">
							<input type="Tel" class="form-control" id="inputTel3"
								placeholder="Số điện thoại">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<div class="checkbox">
								<label> <input type="checkbox"> Remember me
								</label>
							</div>
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
<script>
	function validateText(id){

		if($("#"+id).val() == null  || $("#"+id).val() == "")
		{
			var div = $("#"+id).closest("div").addClass("has-error");

			return false;
		}
		else
		{
			var div = $("#"+id).closest("div").removeClass("has-error").addClass("has-success");
			return true;
		}
	}
	$(document).ready(
		function()
		{
			$("#contactbtn").click(function()
				{
					if(!validateText("inputName3"))
					{
							return false;
					}
					if(!validateText("inputText3"))
					{
							return false;
					}
					if(!validateText("inputEmail3"))
					{
						return false;
					}
					if(!validateText("inputTel3"))
					{
						return false;
					}

					
				}
			);
		}
	)

</script>

<jsp:include page="layout/_footer.jsp"></jsp:include>