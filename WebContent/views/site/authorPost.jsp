<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<jsp:include page="layout/_header.jsp" />
<div class="authorPost">
	<div class="container">
		<div class="row">
			<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
				<c:choose>
					<c:when test="${user.roleId.id== 3}">
						<jsp:include page="layout/_list-group-Author.jsp" />
					</c:when>
					<c:when test="${user.roleId.id== 2}">
						<jsp:include page="layout/_list-group-Tester.jsp" />
					</c:when>
					
				</c:choose>
			</div>
			<div class="col-lg-10 col-md-10 col-sm-10">
				<!-- Edit post area -->
				<div class="row">
					<c:choose>
					<c:when test="${user.roleId.id== 3}">
						<jsp:include page="layout/_post.jsp"></jsp:include>
					</c:when>
					<c:when test="${user.roleId.id== 2}">
						<jsp:include page="layout/_post-test.jsp" />
					</c:when>
					
				</c:choose>
					
				</div>
			</div>
			<!-- /Edit post area -->
		</div>
	</div>
</div>
<jsp:include page="layout/_footer.jsp" />