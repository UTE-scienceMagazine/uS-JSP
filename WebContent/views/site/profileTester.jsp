<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp" />

<div class="profileMaster">
	<div class="container">
		<div class="row">
			<div class="buttons">
				<div class="row">
					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
						<button class="btn btn-default dropdown-toggle master_text"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
							style="color: red;">
							<b>Tester</b> <span class="glyphicon glyphicon-triangle-bottom"
								aria-hidden="true"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Chỉnh sửa</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
						<!-- End dropdown -->


					</div>
					
					<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
						<div class="mq_float_right">
							<!--Setting-->
							<button class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
								Cài đặt <span class="glyphicon glyphicon-triangle-bottom"
									aria-hidden="true"></span>
							</button>
							<ul class="dropdown-menu mq_float_right mq-dropdown-menu">
								<li><a href="#">Sometext</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">Separated link</a></li>
							</ul>
						</div>
						<!-- End Setting -->
					</div>
				</div>
				<br>
				
			</div>
			<br>
			<div class="profile">
				<div class="row">
					<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
						<jsp:include page="layout/_list-group-Tester.jsp"/>
					</div>
					<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
						<div class="row">
							<h4 class="mq_h4">Danh sách bài viết</h4>
							<table class="table table-striped">
								<thead>
									<tr>	
										<th>STT</th>								
										<th style="text-align: center;">Tên bài báo</th>																				
										<th style="width:150px; text-align: center;">Ngày cập nhật</th>
										<th style="width:100px;text-align: center;">Chi tiết</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="l" items="${listArticle}" varStatus="loop" >
									<tr>
										<td>${loop.index +1}</td>
										<td>${l.title }</td>																			
										<td style="width:150px; text-align: center;">${l.date }</td>
										<td  style="width:100px;text-align: center;"><a href="tester-comment.html?id=${l.id}">Xem</a></td>
										
									</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="layout/_footer.jsp"></jsp:include>