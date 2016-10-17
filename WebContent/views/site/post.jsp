<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<jsp:include page="layout/_header.jsp" />
<div class="list-posts">
	<div class="container">
		<div class="row">
			<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
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
			<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
				<h3>Search</h3>
				<div class="post">
					<div class="date-and-category">
						<div class="row">
							<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
								<div class="date-time">
									<p>28/03/2016</p>
									<p>3:13 AM</p>
								</div>
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 float-right">
								<a href="">Electronic</a>
							</div>
						</div>
					</div>
					<div class="post-article">
						<div class="row">
							<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
								<div class="post-title">
									<a href="">Review camera HTC One ME: màu sắc tốt, chế độ
										Manual với nhiều tuỳ chỉnh</a> <br> Posted By <a href="">DuongVu</a>
								</div>
							</div>
							<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 float-right">
								<p>
									Replies: <strong>3000</strong>
								</p>
								<p>
									Views: <strong>3000</strong>
								</p>
							</div>
						</div>
					</div>
					<div class="post-contact">
						<p>Một đoạn chat ở đây.... Test Test Test Test Test Test Test
							Test</p>
					</div>
				</div>
				<div class="post">
					<div class="date-and-category">
						<div class="row">
							<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
								<div class="date-time">
									<p>28/03/2016</p>
									<p>3:13 AM</p>
								</div>
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 float-right">
								<a href="">Electronic</a>
							</div>
						</div>
					</div>
					<div class="post-article">
						<div class="row">
							<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
								<div class="post-title">
									<a href="">Review camera HTC One ME: màu sắc tốt, chế độ
										Manual với nhiều tuỳ chỉnh</a> <br> Posted By <a href="">DuongVu</a>
								</div>
							</div>
							<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 float-right">
								<p>
									Replies: <strong>3000</strong>
								</p>
								<p>
									Views: <strong>3000</strong>
								</p>
							</div>
						</div>
					</div>
					<div class="post-contact">
						<p>Một đoạn chat ở đây.... Test Test Test Test Test Test Test
							Test</p>
					</div>
				</div>
				<div class="post">
					<div class="date-and-category">
						<div class="row">
							<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
								<div class="date-time">
									<p>28/03/2016</p>
									<p>3:13 AM</p>
								</div>
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 float-right">
								<a href="">Electronic</a>
							</div>
						</div>
					</div>
					<div class="post-article">
						<div class="row">
							<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
								<div class="post-title">
									<a href="">Review camera HTC One ME: màu sắc tốt, chế độ
										Manual với nhiều tuỳ chỉnh</a> <br> Posted By <a href="">DuongVu</a>
								</div>
							</div>
							<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 float-right">
								<p>
									Replies: <strong>3000</strong>
								</p>
								<p>
									Views: <strong>3000</strong>
								</p>
							</div>
						</div>
					</div>
					<div class="post-contact">
						<p>Một đoạn chat ở đây.... Test Test Test Test Test Test Test
							Test</p>
					</div>
				</div>
				<div class="post">
					<div class="date-and-category">
						<div class="row">
							<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
								<div class="date-time">
									<p>28/03/2016</p>
									<p>3:13 AM</p>
								</div>
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 float-right">
								<a href="">Electronic</a>
							</div>
						</div>
					</div>
					<div class="post-article">
						<div class="row">
							<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
								<div class="post-title">
									<a href="">Review camera HTC One ME: màu sắc tốt, chế độ
										Manual với nhiều tuỳ chỉnh</a> <br> Posted By <a href="">DuongVu</a>
								</div>
							</div>
							<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 float-right">
								<p>
									Replies: <strong>3000</strong>
								</p>
								<p>
									Views: <strong>3000</strong>
								</p>
							</div>
						</div>
					</div>
					<div class="post-contact">
						<p>Một đoạn chat ở đây.... Test Test Test Test Test Test Test
							Test</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="layout/_footer.jsp"></jsp:include>