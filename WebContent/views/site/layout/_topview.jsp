<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="topview">
	<div class="topview">
		<div class="panel panel-default">
			<div class="panel-heading">
				<span class="glyphicon glyphicon-th-list"></span> <strong>Top
					Views</strong>
			</div>
			<c:forEach var="tv" items="${topviews}">
				<div class="list-group">
					<h3>Tên bài viết</h3>
					<div class="image">
						<a href="article.html?id=${tv.id}" class="title">${tv.title }</a>
						<p class="description">${tv.description }</p>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

</div>
