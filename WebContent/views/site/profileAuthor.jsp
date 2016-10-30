<%@ page pageEncoding="utf-8"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<jsp:include page="layout/_header.jsp" />

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/ajax_comment"
     user="root"  password=""/>
	<sql:query dataSource="${snapshot}" var="result">
		SELECT * from test_list;
</sql:query>


<div class="author-Reviewer">
	<div class="container">
		<div class="row">
			<div class="col-lg-2 col-md-2 col-sm-2">
			
				<jsp:include page="layout/_list-group-Author.jsp"></jsp:include>
			</div>
			<div class="col-lg-10 col-md-10 col-sm-10">
				<!-- Post table -->
				<h4 class="mq_h4" style="margin: 0; padding: 0;">Danh sách bài viết</h4>
				<div class="mq_post_table">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>STT</th>
								<th>Tên bài báo</th>
								<th>Tên lĩnh vực</th>
								<th>Ngày cập nhật</th>
								<th>Trạng thái</th>
								<th>Chi tiết</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="l" items="${result.rows}">
								<tr>
									<td>${l.id }</td>
									<td>${l.title }</td>
									<td>${l.category }</td>
									<td>${l.date}</td>
									<td>${l.status}</td>
									<td>${l.detail}</td>
									
								</tr>
							</c:forEach>
							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="layout/_footer.jsp"></jsp:include>