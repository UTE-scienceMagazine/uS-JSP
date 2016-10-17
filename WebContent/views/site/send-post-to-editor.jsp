<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp" />

<div class="editor-commnet-post">
	<div class="container">
		<div class="row">
			<div class="col-lg-2  col-md-2 col-sm-2">

				<div class="list-group">
					<p href="#" class="list-group-item active">Dành cho phản biện</p>
					<a href="profileTester.html" class="list-group-item"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true" style="float:left padding-right:10px;"></span> Quay lại</a>
					<a href="profileTester.html" class="list-group-item"><span class="glyphicon glyphicon-comment" aria-hidden="true" style="float:left padding-right:10px;"></span>     Danh sách bài viết</a>
					<a href="#" class="list-group-item"><span class="glyphicon glyphicon-bookmark" aria-hidden="true" style="float:left padding-right:10px;"></span>     Thông báo</a>
					<a href="InforEdit.html" class="list-group-item"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="float:left padding-right:10px;"></span>    	Chỉnh sửa thông tin</a>
					<a href="login.html" class="list-group-item"><span class="glyphicon glyphicon-off" aria-hidden="true" style="float:left padding-right:10px;"></span>     Đăng xuất</a>
				</div>
			</div>

	<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
		<div class ="article-post"> <!-- Post infomation -->
			
			<form action="" method="POST" role="form">
				<legend class="text-center">Ý KIẾN PHẢN HỒI</legend>
				<div class="form-group">
					<label for="">Tiêu đề</label>
					<input name="title" type="text"
					class="form-control" id="" value="Ứng dụng CNTT"
					placeholder="Tiêu đề"> 

					<label for="">Ảnh minh họa</label> 
					<input name="img" type="file" id="" placeholder="Ảnh minh họa"> 

					<label for="">Tóm tắt</label>
					<textarea id="tomtat" name="name" class="form-control" rows="8" cols="80">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fermentum auctor aliquet. Nam sit amet odio laoreet, viverra est tristique, posuere neque. Donec tempus velit sit amet posuere iaculis. Mauris cursus, nibh quis pulvinar consectetur, ipsum dui rutrum dolor, nec sagittis lacus mi eget massa. Donec sit amet tempor tortor. Etiam sollicitudin purus urna, scelerisque congue ante tempus quis. Phasellus sollicitudin ante massa, ut rhoncus libero luctus nec.
					</textarea>

					<label for="">Ý nghĩ bài viết</label> 
					<textarea id="ynghia" name="name" class="form-control" rows="8" cols="80">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fermentum auctor aliquet. Nam sit amet odio laoreet, viverra est tristique, posuere neque. Donec tempus velit sit amet posuere iaculis. Mauris cursus, nibh quis pulvinar consectetur, ipsum dui rutrum dolor, nec sagittis lacus mi eget massa. Donec sit amet tempor tortor. Etiam sollicitudin purus urna, scelerisque congue ante tempus quis. Phasellus sollicitudin ante massa, ut rhoncus libero luctus nec.
					</textarea>
					

					<label for="">1.3 Nội dung bài viết đã được công bố trên các ấn phẩm khác chưa? Nếu có, nêu cụ thể ấn phẩm đó.</label> 	

					<textarea id="congbo" name="name" class="form-control" rows="8" cols="80">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fermentum auctor aliquet. Nam sit amet odio laoreet, viverra est tristique, posuere neque. Donec tempus velit sit amet posuere iaculis. Mauris cursus, nibh quis pulvinar consectetur, ipsum dui rutrum dolor, nec sagittis lacus mi eget massa. Donec sit amet tempor tortor. Etiam sollicitudin purus urna, scelerisque congue ante tempus quis. Phasellus sollicitudin ante massa, ut rhoncus libero luctus nec.
					</textarea>


					<label for="">1.4 Kết luận.</label> 	

					<textarea id="ketluan" name="name" class="form-control" rows="8" cols="80">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fermentum auctor aliquet. Nam sit amet odio laoreet, viverra est tristique, posuere neque. Donec tempus velit sit amet posuere iaculis. Mauris cursus, nibh quis pulvinar consectetur, ipsum dui rutrum dolor, nec sagittis lacus mi eget massa. Donec sit amet tempor tortor. Etiam sollicitudin purus urna, scelerisque congue ante tempus quis. Phasellus sollicitudin ante massa, ut rhoncus libero luctus nec.
					</textarea>
					
					

					<label for="">1.5 Nội dung cần chỉnh sửa lại.</label> 	

					<textarea id="chinhsua" name="name" class="form-control" rows="8" cols="80">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fermentum auctor aliquet. Nam sit amet odio laoreet, viverra est tristique, posuere neque. Donec tempus velit sit amet posuere iaculis. Mauris cursus, nibh quis pulvinar consectetur, ipsum dui rutrum dolor, nec sagittis lacus mi eget massa. Donec sit amet tempor tortor. Etiam sollicitudin purus urna, scelerisque congue ante tempus quis. Phasellus sollicitudin ante massa, ut rhoncus libero luctus nec.
					</textarea>
					
					

					<label for="">2. Yêu cầu chỉnh sửa.</label> 	

					<textarea id="yeucau" name="name" class="form-control" rows="8" cols="80">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fermentum auctor aliquet. Nam sit amet odio laoreet, viverra est tristique, posuere neque. Donec tempus velit sit amet posuere iaculis. Mauris cursus, nibh quis pulvinar consectetur, ipsum dui rutrum dolor, nec sagittis lacus mi eget massa. Donec sit amet tempor tortor. Etiam sollicitudin purus urna, scelerisque congue ante tempus quis. Phasellus sollicitudin ante massa, ut rhoncus libero luctus nec.
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
				<button name="post" type="submit" class="btn btn-primary">Submit</button>
			</form>


		</div>	
	</div>

		</div>
	</div>

	



	

</div>
	<jsp:include page="layout/_footer.jsp"></jsp:include>