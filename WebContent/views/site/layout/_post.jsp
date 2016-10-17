<%@page contentType="text/html" pageEncoding="UTF-8"%>

<form action="" method="POST" role="form">
	<legend>Bài viết mới</legend>
	<div class="form-group">
		<label for="">Tiêu đề</label> <input name="title" type="text"
			class="form-control" id="" value="Ứng dụng CNTT"
			placeholder="Tiêu đề"> <label for="">Ảnh minh họa</label> <input
			name="img" type="file" id="" placeholder="Ảnh minh họa"> 
			<label for="">Tóm tắt</label>
		<textarea id="tomtat" name="summary" class="form-control" placeholder="Tóm tắt"></textarea>
		<script type="text/javascript" lang="javascript">
				CKEDITOR.replace( 'tomtat' );
				
		</script>  
		<label for="">Nội dung</label>
		<textarea id="noidung" name="contact" class="form-control" rows="20"
			placeholder="Nội dung">Một đoạn text.....</textarea>
		
		<script type="text/javascript" lang="javascript">
				CKEDITOR.replace( 'noidung' );
		</script>
		
		<label for="">Từ khóa</label> <input name="hashtag" type="text"
			class="form-control" id="" placeholder="Từ khóa"> <label
			for="">Loại tin</label> <select name="category">
			<option value="1">Công nghệ thông tin</option>
		</select> <br> <label for="">Trạng thái</label> <select name="status">
			<option value="true" selected="selected">Hiển thị</option>
			<option value="false">Không hiển thị</option>
		</select> 
		<br>
		<label for="">Thứ tự</label> <input name="position" type="text"
			class="form-control" id="" placeholder="Thứ tự">
	</div>
	<button name="post" type="submit" class="btn btn-primary">Submit</button>
</form>