<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
	<div class ="article-post"> <!-- Post infomation -->
			<fieldset id="fs">
			
			<form action="feedback.html" method="POST" role="form">
				<legend class="text-center">Ý KIẾN PHẢN HỒI</legend>
				<div class="form-group">
					<label for="">Tiêu đề</label>
					<input name="articleId" type="hidden" value="${article.id}">
					<input name="title" type="text"	class="form-control" id="name" value="${article.title}" disabled="disabled"
					placeholder="Tiêu đề"> 
					
					

					<label for="">Tóm tắt bài viết</label>
					<textarea id="tomtat" name="description" class="form-control" rows="8" cols="80">${feedback.description}</textarea>
					

					<label for="">Ý nghĩa bài viết</label> 
					<textarea id="ynghia" name="meaning" class="form-control" rows="8" cols="80">${feedback.meaning}</textarea>
					

					<label for="">Nội dung bài viết đã được công bố trên các ấn phẩm khác chưa? Nếu có, nêu cụ thể ấn phẩm đó.</label> 	

					<textarea id="congbo" name="license" class="form-control" rows="8" cols="80">${feedback.license}</textarea>


					<label for="">Kết luận.</label> 	

					<textarea id="ketluan" name="result" class="form-control" rows="8" cols="80">${feedback.result}</textarea>
					
					

					<label for="">Nội dung cần chỉnh sửa lại.</label> 	

					<textarea id="chinhsua" name="neededit" class="form-control" rows="8" cols="80">${feedback.result}</textarea>
					
					

					<script type="text/javascript" lang="javascript">
						CKEDITOR.replace( 'yeucau' );
						CKEDITOR.replace( 'tomtat' );
						CKEDITOR.replace( 'ynghia' );
						CKEDITOR.replace( 'chinhsua' );
						CKEDITOR.replace( 'ketluan' );
						CKEDITOR.replace( 'congbo' );
					</script>
					
					

				</div>
				<button type="submit" class="btn btn-primary" value="register" name="command">Gửi</button>
			</form>
			
			</fieldset>
			
			
			<c:if test="${roleId == 5 }">
				<script type="text/javascript">
				var x = document.getElementById("fs");
				x.disabled="disabled";
				</script>
			</c:if>

		</div>	