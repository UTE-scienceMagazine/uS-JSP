<%@page contentType="text/html" pageEncoding="UTF-8"%>
	<div class ="article-post"> <!-- Post infomation -->
			
			<form action="" method="POST" role="form">
				<legend class="text-center">Ý KIẾN PHẢN HỒI</legend>
				<div class="form-group">
					<label for="">Tiêu đề</label>
					<input name="title" type="text"	class="form-control" id="name" value="${article.title}" disabled="disabled"
			placeholder="Tiêu đề"> 

					

					<label for="">Tóm tắt bài viết</label>
					<textarea id="tomtat" name="name" class="form-control" rows="8" cols="80">
					</textarea>

					<label for="">Ý nghĩa bài viết</label> 
					<textarea id="ynghia" name="name" class="form-control" rows="8" cols="80">
					</textarea>
					

					<label for="">Nội dung bài viết đã được công bố trên các ấn phẩm khác chưa? Nếu có, nêu cụ thể ấn phẩm đó.</label> 	

					<textarea id="congbo" name="name" class="form-control" rows="8" cols="80">
					</textarea>


					<label for="">Kết luận.</label> 	

					<textarea id="ketluan" name="name" class="form-control" rows="8" cols="80">
					</textarea>
					
					

					<label for="">Nội dung cần chỉnh sửa lại.</label> 	

					<textarea id="chinhsua" name="name" class="form-control" rows="8" cols="80">
					</textarea>
					
					

					<script type="text/javascript" lang="javascript">
						CKEDITOR.replace( 'yeucau' );
						CKEDITOR.replace( 'tomtat' );
						CKEDITOR.replace( 'ynghia' );
						CKEDITOR.replace( 'chinhsua' );
						CKEDITOR.replace( 'ketluan' );
						CKEDITOR.replace( 'congbo' );
					</script>
					
					

				</div>
				<a class="btn btn-default" href="feedback.html">Gửi phản biện</a>
			</form>


		</div>	