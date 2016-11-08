<%@page contentType="text/html" pageEncoding="UTF-8"%>

<script type="text/javascript">
		function file_change(f){
			var reader = new FileReader();
			reader.onload = function (e) {
				var img = document.getElementById("img");
				img.src = e.target.result;
				img.style.display = "inline";
			};
			reader.readAsDataURL(f.files[0]);
		}
</script>


<form action="" method="POST" role="form">
	<legend>Bài viết mới</legend>
	<div class="form-group">
		<label for="">Tiêu đề</label> 
		<input name="title" type="text"	class="form-control" id="" value=""
			placeholder="Tiêu đề"> 
			
			<label for="">Ảnh minh họa</label> 
			<input id="f" type="file" onchange="file_change(this)" style="display: none" />
			<input type="button" value="Chọn ảnh" onclick="document.getElementById('f').click()" /> <br> 
			<img id="img" style="display: none" /> <br> 
			
			
			<label for="">Tóm
			tắt</label>
			
		<textarea id="tomtat" name="summary" class="form-control"
			placeholder="Tóm tắt"></textarea>
		<script type="text/javascript" lang="javascript">
				CKEDITOR.replace( 'tomtat' );
				
		</script>
		<label for="">Nội dung</label>
		<textarea id="noidung" name="contact" class="form-control" rows="20"
			placeholder="Nội dung">Một đoạn text.....</textarea>

		<script type="text/javascript" lang="javascript">
				CKEDITOR.replace( 'noidung' );
		</script>

		<label for="">Từ khóa</label> 
		<input name="hashtag" type="text"
			class="form-control" id="" placeholder="Từ khóa"> <label
			for="">Loại tin</label> <select name="category">
			<option value="1">Công nghệ thông tin</option>
		</select> <br> <label for="">Trạng thái</label> <select name="status">
			<option value="true" selected="selected">Hiển thị</option>
			<option value="false">Không hiển thị</option>
		</select> <br> <label for="">Thứ tự</label>
		 <input name="position"
			type="text" class="form-control" id="" placeholder="Thứ tự">
	</div>
	<button name="post" type="submit" class="btn btn-primary">Submit</button>
</form>