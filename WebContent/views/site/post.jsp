<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<jsp:include page="layout/_header.jsp" />
<div class="list-posts">
	<div class="container">
		<div class="row">
			<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">

				<jsp:include page="layout/_list-group-Viewer.jsp" />


			</div>
			<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
				<h3>Search</h3>
				<c:forEach var="l" items="${list}">
					<div class="post">
						<div class="date-and-category">
							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
									<div class="date-time">
										<p>${l.date }</p>
										
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 float-right">
									<a href="">${l.articleId.categoryId.name }</a>
								</div>
							</div>
						</div>
						<div class="post-article">
							<div class="row">
								<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
									<div class="post-title">
										<a href="">${l.articleId.title }</a> <br> Posted By <a href="">${l.articleId.authorId.name }</a>
									</div>
								</div>
								<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 float-right">
									<p>
										Replies: <strong>3000</strong>
									</p>
									<p>
										Views: <strong>${l.articleId.views }</strong>
									</p>
								</div>
							</div>
						</div>
						<div class="post-contact">
							<p>${l.mess }</p>
						</div>
					</div>
				</c:forEach>




			</div>
		</div>
	</div>
</div>

<jsp:include page="layout/_footer.jsp"></jsp:include>