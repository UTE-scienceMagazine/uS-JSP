<%@page contentType="text/html" pageEncoding="UTF-8"%>


<form action="authorReviewer.html" method="POST" role="form"
	enctype="multipart/form-data">
	<legend>Bài viết mới</legend>
	<div class="form-group">
		<label for="">Tiêu đề</label> <input name="id" value="${article.id}"
			type="hidden">
		<textarea name="title" type="text" class="form-control" id="" rows="3"
			placeholder="Tiêu đề">${article.title }
		</textarea>


		<label for="">Tóm tắt</label>

		<textarea id="description" name="description" class="form-control"
			rows="5" placeholder="Tóm tắt">${article.description }
			</textarea>

		<label for="">Nội dung</label>
		<div class="content-article">
			<iframe src="pdf/${article.pdf}" seamless="seamless"> </iframe>

			File to upload:  <input type="file" name="upfile" accept="application/pdf">
		</div>

		<label for="">Từ khóa</label> 
		<input name="hashtag"  type="text" class="form-control" id="hashtag" placeholder="Từ khóa"/> 
		<label for="">Loại tin</label> 
		<select name="volume">
			<option value="1">Công nghệ thông tin</option>
		</select> <br> 
		<label for="">Trạng thái</label> 
		<select name="statusId">
			<option value="${article.statusId.id}" selected="selected">${article.statusId.name} </option>
		</select>
		
		
		<br>
		<label for="">Số trang</label> 
		<input name="num" type="text" class="form-control" id="" placeholder="Thứ tự"
			value="${article.num}">


	</div>
	<button name="post" type="submit" class="btn btn-primary">Submit</button>
</form>