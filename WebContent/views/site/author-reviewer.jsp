<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp" />

<div class="profileAuthor">
	
	<div class="container">
		<div class="row">
			<div class="col-lg-2 col-md-2 col-sm-2">
				<!-- List group -->
				<jsp:include page="layout/_list-group-Author.jsp"></jsp:include>
			</div>
			<div class="col-lg-10 col-md-10 col-sm-10">
				<!-- Post table -->
				${message }
				<jsp:include page="layout/_review-article.jsp"></jsp:include>
				
			</div>
		</div>
	</div>
</div>

<jsp:include page="layout/_footer.jsp"></jsp:include>