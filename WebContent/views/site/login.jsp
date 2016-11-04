<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="layout/_header.jsp" />

<script type="text/javascript">        
	$(document).ready(function () {             
		$("#formLogin").validate({                 
					rules: {
						email: { required: true, email: true},
						password: { required: true, minlength: 6}
					},
					messages: {
						password: { required: "Không để trống !",	minlength: "Ít nhất 6 ký tự!" },                     
						email: { required: "Không để trống !"}
					}
				}); 

		$("#formRegister").validate({                 
					rules: {
						email: { required: true, email: true},
						password: { required: true, minlength: 6},
						confirm: {	required: true, equalTo: "#password-register" }
					},
					messages: {        
						email: { required: "Không để trống !"},
						password: { required: "Không để trống !",	minlength: "Ít nhất 6 ký tự!" },    
						confirm:{ equalTo:"Không trùng với password"}
					}                 
				}); 

			
		});
		
</script>

	<div class="signin-register">
		<div class="container">
			<div class="row">
				<div class="signin">
					<div class="col-xs-12 col-sm-12 col-md-5 col-lg-5">
						
						<form id="formLogin" action="signin.html" method="POST" role="form">
							<legend>Sign in</legend>
							<div class="form-group">
								<p>${login}</p>
								<label>Email</label>
								<input name="email" type="text" class="form-control" id="email" placeholder="Email">
								<br>
								<label>Password</label>
								<input name="password"type="password" class="form-control" id="password" placeholder="Password">
								
							</div>
							<div class="row text-center">
								<label class="radio-inline"><input type="radio" value="1" name="users" checked="checked"> View</label>
								<label class="radio-inline"><input type="radio" value="2" name="users">Tester</label>
								<label class="radio-inline"><input type="radio" value="3" name="users">Author</label>
								<label class="radio-inline"><input type="radio" value="4" name="users">Editor</label>
								<label class="radio-inline"><input type="radio" value="5" name="users">Master</label>
								<label class="radio-inline"><input type="radio" value="6" name="users">Admin</label>
								
							</div>
							<label><input type="checkbox" value="true" name="remember">Remember</label><br>
							
							<button type="submit" class="btn btn-primary" value="login" name="command">Submit</button>
						
						</form>
					</div>
				</div>
				<div class="col-xs-4 col-sm-4 col-md-2 col-lg-2">
					<div class="or text-center">
						<h1>Or</h1>
					</div>
				</div>
				<div class="register">
					<div class="col-xs-12 col-sm-12 col-md-5 col-lg-5">
						<form id="formRegister" action="signin.html" method="POST" role="form">
							<legend>Register</legend>
							<div class="form-group">
								<label for="">Email</label>
								<input name="email" type="text" class="form-control" id="email" onBlur="checkAvailability()" placeholder="Email">
								<span id="user-availability-status"></span>    
								<br>
								<label for="">Password</label>
								<input name="password" type="password" class="form-control" id="password-register" placeholder="Password">
								<br>
								<label for="">Confirm password</label>
								<input name="confirm" type="password" class="form-control" id="confirm" placeholder="Confirm Password">
							</div>
							<button type="submit" class="btn btn-primary" value="register" name="command">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>

function checkAvailability() {
	$.ajax({
		url : "checkemail.html",
		type : "POST",
		data : {
			email:  $("#formRegister #email").val(),
		},
		async : true,
		success : function(data) {
			$("#user-availability-status").html(data);
			
		},
		error : function() {
		}
	});
} 	
</script>

<jsp:include page="layout/_footer.jsp"></jsp:include>