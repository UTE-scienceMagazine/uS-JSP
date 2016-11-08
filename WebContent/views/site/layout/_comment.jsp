
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="comment hide">
	<div class="comment-list">
		<div class="row">
			<ul class="comments-list">
				<c:forEach var="l" items="${list}">
					<li class="comments">
						<div class="row comments">
							<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
								<img src="images/avatar/${l.userId.avatar }.png" class="img-responsive" alt="Image">
							</div>
							<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
								<div class="info">
									<p>${l.userId.email}
										<small><a href="javascript:void(0)" class="rep-a"
											data-a="${l.id}">Reply</a></small>
									</p>
								</div>
								<p class="time">
									Ngày đăng:
									<fmt:formatDate pattern="dd/MM/yyyy" value="${l.date}" />
								</p>
								<p>${l.mess}</p>
								

								<ul class="reply-comment-list${l.id}">
									<c:forEach var="r" items="${l.replies}">
										<li class="reply-commet">
											<div class="row">
												<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
													<img src="images/avatar/${r.userId.avatar}.png" class="img-responsive"
														alt="Image">
												</div>
												<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
													<div class="info">
														<p>${r.userId.email}</p>
													</div>
													<p class="time">Ngày đăng: <fmt:formatDate pattern="dd/MM/yyyy" value="${r.date}" /></p>
													<p>${r.mess }</p>
													
												</div>
											</div>
										</li>
									</c:forEach>
									<!--  -->

								</ul>
								<!-- end reply-comment-list -->

								<fieldset style="margin-left: 10px; display: none"
									class="rep-form${l.id}">
									<legend>Reply</legend>
									<form role="form">
										<div class="form-group">
											<label for="">Message</label>
											<textarea type="text" class="form-control rep-mess${l.id}"
												id="" placeholder="Massage"></textarea>
										</div>

										<button type="submit" value="reply"
											class="reply-submit btn btn-primary" data-comid="${l.id }">Reply</button>
									</form>
								</fieldset>
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