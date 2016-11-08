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


<form action="tester-comment.html" method="POST" role="form">
	<legend>Bài viết mới</legend>
	<div class="form-group">
		<label for="">Tiêu đề</label> 
		<input name="id" value="" type="hidden">
		<input name="title" type="text"	class="form-control" id="" value="" disabled="disabled"
			placeholder="Tiêu đề"> 
			
			
			<label for="">Tóm tắt</label>
			
		<textarea id="tomtat" name="summary" class="form-control" disabled="disabled"
			placeholder="Tóm tắt"></textarea>

		<label for="">Nội dung</label>
		<div class="content-article">
			<iframe src="pdf/${article.pdf}"  seamless="seamless">
							
			</iframe>
		</div>
		

		
		<fieldset disabled="disabled">
			<label for="">Từ khóa</label> 
		<input name="hashtag" type="text" class="form-control" id="" placeholder="Từ khóa"> <label
			for="">Loại tin</label> <select name="category">
			<option value="1">Công nghệ thông tin</option>
		</select> <br> <label for="">Trạng thái</label> <select name="status">
			<option value="true" selected="selected">Hiển thị</option>
			<option value="false">Không hiển thị</option>
		</select> <br> <label for="">Thứ tự</label>
		 <input name="position"
			type="text" class="form-control" id="" placeholder="Thứ tự">
		</fieldset>
		
	</div>
	<button name="post" type="submit" class="btn btn-primary">Submit</button>
</form>