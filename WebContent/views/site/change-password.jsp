<%@page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp" />

<div class="change-password">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-push-4">
				${message}
				<form method="post" action="account/change.htm" role="form">

					<div class="col-md-7">
						<h2>CHANGE PASSWORD</h2>
						<div class="form-group">
							<label for="id">User Name</label> 
							<input name="id" class="form-control" />
						</div>

						<div class="form-group">
							<label for="password">Current Password</label> <input
								type="password" name="current" class="form-control" />
						</div>

						<div class="form-group">
							<label for="password">New Password</label> <input type="password"
								name="password" class="form-control" />
						</div>

						<div class="form-group">
							<label for="password">Confirm New Password</label> <input
								type="password" name="confirm" class="form-control" />
						</div>

						<button class="btn btn-default">Change Password</button>
					</div>

				</form>
			</div>

		</div>
	</div>
</div>

<jsp:include page="layout/_footer.jsp" />