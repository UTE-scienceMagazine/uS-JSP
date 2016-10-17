<%@page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp" />
<div class="forgot">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-push-4">
				<form action="account/forgot.htm" method="post" role="form">
					<div class="col-md-8">
						<h2>FORGOT PASSWORD</h2>
						${message}
						<div class="form-group">
							<label for="id">User Name</label> <input name="id"
								class="form-control" />
						</div>

						<div class="form-group">
							<label for="email">Email Address</label> <input name="email"
								class="form-control" />
						</div>

						<button class="btn btn-default">Get Password</button>
					</div>
				</form>
			</div>

		</div>
	</div>
</div>
<jsp:include page="layout/_footer.jsp" />