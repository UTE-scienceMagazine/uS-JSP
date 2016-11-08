<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp" />
<div class="index">
	<div class="container">
		<div class="row">
			<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
				<h1 class="text-center">Volume ${volumeId}</h1>
				<div class="content-wrap">
					<c:forEach var="l" items="${list}">
						<div class="news">
							<div class="title">		
								<a href="article.html?id=${l.id}">${l.title}</a>
								<p class="page">Pages: ${l.num} <a href="download.html?id=${l.id}" class="fa fa-download" aria-hidden="true"></a></p>
							
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
				<!-- end content-wrap -->
			</div>
			<!-- end col-8 -->
			<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
				<div class="row">
					<jsp:include page="layout/_topview.jsp"></jsp:include>
					
				</div>
			</div>
			<!-- end col 4 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</div>

<jsp:include page="layout/_footer.jsp"></jsp:include>