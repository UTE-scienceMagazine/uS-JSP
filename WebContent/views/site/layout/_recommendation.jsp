<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="recommendation">
	<div class="container">
		<div class="row">
			<h2>
				News <strong><a href="">Electronic</a></strong>
			</h2>
			<div class="article-list">

				<c:forEach var="as" items="${articles}" end="6">
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
						<article class="article-item" data-toggle="tooltip"
							title='${as.title }'>

							<div class="article-info">
								<p class="article-title">
									<a href="">${as.title}</a>
								</p>
								<p>${as.description}</p>
								<p class="article-meta">
									Bởi <a href="">${as.authorId.name }</a> Vào <a href=""><fmt:formatDate pattern="dd/MM/yyyy" value="${article.date}" /></a>
								</p>
							</div>
						</article>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

</div>
