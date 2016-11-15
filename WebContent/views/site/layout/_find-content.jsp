<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<div class="content-wrap">
	<p class="text-center">${findmessage}</p>
	<c:forEach var="l" items="${list}">
		<div class="news">
			<div class="title">
				<a href="article.html?id=${l.id}">${l.title}</a>
				<p class="page">
					Pages: ${l.num} <a href="download.html?id=${l.id}"
						class="fa fa-download" aria-hidden="true"></a>
				</p>

			</div>
			<div class="info">
				<p>Views: ${l.views }</p>

			</div>

			<div class="news-content">
				<p>${l.description}</p>
			</div>
		</div>

	</c:forEach>
</div>