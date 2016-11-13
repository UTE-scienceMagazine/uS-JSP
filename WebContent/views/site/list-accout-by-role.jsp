<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp" />

<div class="listAcountByRole">
	<div class="container">
		<div class="row">
			<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<jsp:include page="layout/_list-group-Master.jsp"></jsp:include>
			</div>
			
			<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
					<jsp:include page="layout/_list-account.jsp"></jsp:include>
				</div>
		</div>
	</div>
</div>

<jsp:include page="layout/_footer.jsp"></jsp:include>