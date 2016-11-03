<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page pageEncoding="utf-8"%>

<jsp:include page="layout/_header.jsp" />
<div class="article">
	<div class="container">
		<div class="row">
			<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
				<div class="the-article">
					<div class="title">
							<h4>${article.title}</h4>
							<p>Ngày đăng :<fmt:formatDate pattern="dd/MM/yyyy" value="${article.date}" /></p>
					</div>
					<div class="content-article">
						<iframe src="pdf/${article.pdf}" seamless="seamless">
							
						</iframe>
						<div class="hash-tag">
							<div class="row">
								<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
									<div class="rating">
										<i id="like" class="fa fa-heart fa-2x" aria-hidden="true"></i>
										<form id="ratingsForm ">
											<div class="stars">
												<input type="radio" name="star" class="star-1" id="star-1" />
												 <label class="star-1" for="star-1">1</label>
												 <input type="radio" name="star" class="star-2" id="star-2" /> 
												 <label class="star-2" for="star-2">2</label> 
												 <input type="radio" name="star" class="star-3" id="star-3" /> 
												 <label class="star-3" for="star-3">3</label> 
												 <input type="radio" name="star" class="star-4" id="star-4" /> 
												 <label class="star-4" for="star-4">4</label> 
												 <input type="radio" name="star" class="star-5" id="star-5" /> 
												 <label class="star-5" for="star-5">5</label> 
												 <span></span>
											</div>
										</form>
									</div>
									<i id="comment" class="fa fa-comment-o fa-2x"
										aria-hidden="true"></i>
								</div>
								<div class="col-xs-4 col-sm-4 col-md-4 col-xs-push-4">
									<div class="right">
										<a href="" class="fa fa-twitter fa-2x"></a> <a href=""
											class="fa fa-facebook-square fa-2x"></a>
									</div>
								</div>
							</div>
						</div>
						<jsp:include page="layout/_comment.jsp"></jsp:include>
						<!-- end comment -->

					</div>
					<!-- end content-article -->
				</div>
			</div>
			<!-- end col-8 -->
			<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
				<div class="row">
					<jsp:include page="layout/_topview.jsp"></jsp:include>
					
				</div>
			</div>
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</div>
<jsp:include page="layout/_recommendation.jsp"></jsp:include>
<jsp:include page="layout/_footer.jsp"></jsp:include>