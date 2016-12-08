<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<style>
	.ms{
		font-family:Arial, Helvetica, sans-serif; 
		font-size:13px;
		color: #9F6000;
		background-color: #FEEFB3;
	}
</style>
<div class="list-group">
	<p class="list-group-item active">Dành cho tổng biên tập</p>
	<c:if test="${not empty hasMs }">
		<a href="listmessage.html" class="list-group-item ms" > Thông báo mới  <span
		class="glyphicon glyphicon-alert" aria-hidden="true"
		style="float: left padding-right:10px;"></span>
	</a>
	</c:if>
	<a href="profile.html" class="list-group-item"> <span
		class="glyphicon glyphicon-comment" aria-hidden="true"
		style="float: left padding-right:10px;"></span> Bài viết mới
	</a>
	
	 <a href="list-volume.html" class="list-group-item"><span
		class="glyphicon glyphicon-pencil" aria-hidden="true"
		style="float: left padding-right:10px;"></span> Thêm volume mới</a>
 	
	 <a href="add-info.html" class="list-group-item"><span
		class="glyphicon glyphicon-pencil" aria-hidden="true"
		style="float: left padding-right:10px;"></span> Chỉnh sửa thông tin</a> 
	<a
		href="signout.html" class="list-group-item"><span
		class="glyphicon glyphicon-off" aria-hidden="true"
		style="float: left padding-right:10px;"></span> Đăng xuất</a>
		
</div>

