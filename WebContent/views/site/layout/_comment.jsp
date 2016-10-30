
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="comment hide">
	<div class="comment-list">
		<div class="row">
			<ul class="comments-list">
				<c:forEach var="l" items="${list}">
					<li class="comments">
						<div class="row comments">
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
								<img src="images/images.png" class="img-responsive" alt="Image">
							</div>
							<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
								<div class="info">
									<p>${l.userId} <small><a href="javascript:void(0)" class="rep-a" data-a="#">Reply</a></small></p>
								</div>
								<p>${l.mess}</p>
								<p class="time">Ngày đăng: <fmt:formatDate pattern="dd/MM/yyyy" value="${l.date}"/> </p>
											
								<ul class="reply-comment-list">
									
										<!-- <li class="reply-commet">
											<div class="row">
												<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
													<img src="images/images.png" class="img-responsive"
														alt="Image">
												</div>
												<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
													<div class="info">
														<p>Ai đó</p>
													</div>
													<p>Bác nói chí phải ahihi</p>
													<p class="time">Ngày đăng: 13/09/2016</p></div>
											</div>
										</li> -->
															
								</ul>
								<!-- end reply-comment-list -->
								<jsp:include page="_reply-form.jsp"></jsp:include>
							</div>
							<!-- end col 11 -->
						</div> <!-- end row -->
					</li>
				<!-- end comments -->
				</c:forEach>	
				
				<!-- end commen-->
			</ul>
			<!-- end comment-list -->
		</div>
	</div>
	<!-- end comment-list -->

	<jsp:include page="_comment-form.jsp"></jsp:include>
</div>