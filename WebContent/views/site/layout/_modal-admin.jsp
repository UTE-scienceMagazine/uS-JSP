<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="myModal" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Thông tin tài khoản</h4>
			</div>
			<div class="modal-body">
					<form action="" method="POST" role="form">
						<div class="form-group">
							<label for="">Tên tài khoản</label>
							<input type="text" class="form-control" id="" placeholder="Tên tài khoản">
							<label for="">Mật khẩu</label>
							<input type="text" class="form-control" id="" placeholder="Mật khẩu">
							<label for="">Email</label>
							<input type="text" class="form-control" id="" placeholder="Email">
							<label for="">Số điện thoại</label>
							<input type="text" class="form-control" id="" placeholder="Số điện thoại">
							<div class="row text-center">
								<label class="radio-inline"><input type="radio" value="view" name="users" checked="checked"> View</label>
								<label class="radio-inline"><input type="radio" value="tester" name="users">Tester</label>
								<label class="radio-inline"><input type="radio" value="author" name="users">Author</label>
								<label class="radio-inline"><input type="radio" value="editor" name="users">Editor</label>
								<label class="radio-inline"><input type="radio" value="master" name="users">Master</label>
								<label class="radio-inline"><input type="radio" value="admin" name="users">Admin</label>
								<label class="radio-inline"><input type="radio" value="block" name="users">Block</label>
							</div>
						</div>
						<button value="add" class="btn btn-primary">Add</button>
						<button value="change" class="btn btn-primary">Change</button>					
						<button value="delete" class="btn btn-warning">Delete</button>
						<button class=" modal-footer btn btn-danger" data-dismiss="modal">Close</button>
					
					</form>
			</div>
			
		</div>

	</div>
</div>
