<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp" />
<div class="profileMaster">
	<div class="container">
		
			<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
				<c:if test="${roleId == 2 }">
					<jsp:include page="layout/_list-group-Tester.jsp"/>
				</c:if>
				<c:if test="${roleId == 5 }">
					<jsp:include page="layout/_list-group-Master.jsp"/>
				</c:if>
				
			</div>
		
		
			<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
				<font color="red"><c:if test="${requestScope.scsMs == true }">
           				 <c:out value="${errorMess}" />
           		 </c:if></font>
				<jsp:include page="layout/_feedback-tester.jsp"></jsp:include>
			</div>
		
	</div>
</div>

<jsp:include page="layout/_footer.jsp"></jsp:include>