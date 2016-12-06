<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

	
 	<div class="list-account">
	<div class="container">
		<c:forEach var="list" items="${listAccount}">
		<div class="account">
			<div class="row">
				<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					<img src="${list.avatar }" class="img-responsive" alt="Image">
				</div>
				<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
					<div class="info">
					<form method="POST" action="listaccount-by-role.html">
						<label for="Email">Email: </label>
						<a href="">${list.email}</a><br>
						<label for="Type">Chức vụ</label>
						<c:if test="${role == 2 }">
							<p style="max-width: 200px;">Tester</p>
						</c:if>
						<c:if test="${role == 3}">
							<p style="max-width: 200px;">Editor</p>
						</c:if>
						<input value="${list.id}" type="hidden" name="employeeId">
						
						<label for="Date">Họ và tên</label>
						<p>${list.name}<p> <br>
						<button type="submit" class="btn btn-primary">Chuyển</button>
					</form>
						
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
		
		</div>
		<!-- end row -->
	</div>
	
	
	</div>
	<!-- end container -->
</div>





