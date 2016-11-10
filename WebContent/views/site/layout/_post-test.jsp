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


<form action="feedback.html" method="POST" role="form">
	<legend>Xem bài viết</legend>
	<div class="form-group">
		<label for="">Tiêu đề</label> 
		<input name="id" value="${article.id}" type="hidden">
		<input name="title" type="text"	class="form-control" id="name" value="${article.title}" disabled="disabled"
			placeholder="Tiêu đề"> 
			
			
			<label for="">Tóm tắt</label>
			
		<textarea id="tomtat" name="summary" class="form-control" disabled="disabled" 
			placeholder="Tóm tắt">${article.description}</textarea>

		<label for="">Nội dung</label>
		<div class="content-article">
			<iframe src="pdf/${article.pdf}"  seamless="seamless">
							
			</iframe>
		</div>
		

		
		<fieldset disabled="disabled">
			<label for="">Từ khóa</label> 
		<input name="hashtag" type="text" class="form-control" id="" placeholder="Từ khóa" value="${article.detail }">
		 
		</fieldset>
		
	</div>
	<a class="btn btn-default" href="feedback.html">Gửi phản biện</a>
</form>