<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp" />

<div class="profileMaster">
	<div class="container">
		<div class="row">
			
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
										<th>Tên bài báo</th>	
										<th>Tác giả</th>																			
										<th>Ngày đăng</th>
										<th>Chi tiết</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="l" items="${listArticle}" varStatus="loop" >
									<tr>
										<td>${loop.index +1}</td>
										<td>${l.title }</td>
										<th>${l.authorId.name }</th>																			
										<td>${l.date }</td>
										<td><a href="tester-comment.html?id=${l.id}">Xem</a></td>
										
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