<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp" />
<div class="editorPost">
	<div class="container">
		<div class="row">
			<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
				<jsp:include page="layout/_list-group-Editor.jsp"></jsp:include>
			</div>
			<div class="col-lg-10 col-md-10 col-sm-10">
				<!-- Edit post area -->
				<div class="row">
					<jsp:include page="layout/_post.jsp"></jsp:include>
				</div>
			</div>
			<!-- /Edit post area -->
		</div>
	</div>
</div>
<jsp:include page="layout/_footer.jsp"></jsp:include>