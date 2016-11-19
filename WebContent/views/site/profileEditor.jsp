<%@ page pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="layout/_header.jsp" />
<div class="profileEditor">
	<div class="container">
		<div class="row">
			
			
			<div class="profile">
				<div class="row">
					<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
						<jsp:include page="layout/_list-group-Editor.jsp"></jsp:include>
					</div>
					<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
						<h4 class="mq_h4">Danh sách bài viết</h4>
						<table class="table table-striped">
							<thead>
								<tr>
									<th>STT</th>
									<th>Tên bài báo</th>
									<th>Tên lĩnh vực</th>
									<th>Trạng thái</th>
									<th>Ngày cập nhật</th>
									<th>Chi tiết</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="l" items="${list}">
									<tr>
										<td>${l.id }</td>
										<td>${l.title}</td>
										<td>${l.categoryId.name }</td>
										<td>${l.statusId.name }</td>
										<td>1/1/2016</td>
										<td style="padding-left: 25px;"><a href="checkArticle.html?id=${l.id}"><span
												class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
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

<jsp:include page="layout/_footer.jsp"></jsp:include>