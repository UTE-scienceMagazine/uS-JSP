<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<form action="checkArticle.html" method="POST" role="form" enctype="multipart/form-data">
	<legend>Bài viết</legend>
	<div class="form-group">
		<label for="">Tiêu đề</label> <input name="id" value="${article.id}"
			type="hidden">
		<textarea name="title" type="text" class="form-control" id="title" rows="3"
			placeholder="Tiêu đề">${article.title }</textarea>
		<script type="text/javascript" lang="javascript">
				CKEDITOR.replace( 'title' );
		</script>

		<label for="">Tóm tắt</label>

		<textarea id="description" name="description" class="form-control"
			rows="5" placeholder="Tóm tắt">${article.description }</textarea>
		<script type="text/javascript" lang="javascript">
				CKEDITOR.replace( 'description' );
		</script>

		<label for="">Nội dung</label>
		<div class="content-article">
			<c:choose>
				<c:when test="${article.pdf == null}">
					<h1>Upload pdf</h1><br>
				</c:when>
				<c:otherwise>
					<iframe src="pdf/${article.pdf}" seamless="seamless"> </iframe>
				</c:otherwise>
			</c:choose>
			

			File to upload:  <input type="file" name="upfile" accept="application/pdf">
		</div>

		<label for="">Từ khóa</label> 
		<input name="hashtag"  type="text" class="form-control" id="hashtag" placeholder="Từ khóa"/> 
		
		<br> 
		<label for="">Trạng thái</label> 
		<select name="statusId" readonly="readonly" >			
			<option value="3" >Waiting for Verifica</option>
			<option value="4">Edittable</option>
		</select>
		<br/>
		<label>Loại tin</label> 
		<select name="category">
			<c:forEach var="lc" items="${listCategory}">
				<option value="${lc.id}">${lc.name}</option>
			</c:forEach>
			
		</select>
		
		<br>
		<label for="">Số trang</label> 
		<input name="num" type="text" class="form-control" id="" placeholder="Thứ tự"
			value="${article.num}">

		<input name="editoremail" value = "${sessionScope.user.email}" hidden="hidden">
		<label for="">Gửi thông báo đến tổng biên tập:</label>
		 <input name="message" type="text" class="form-control" id="" placeholder="Nội dung"
			value="">
	</div>
	<button name="post" type="submit" class="btn btn-primary">Submit</button>
</form>