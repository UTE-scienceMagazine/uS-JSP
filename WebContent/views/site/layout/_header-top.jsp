<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="header_top">
	<!--header_top-->
	<div class="container">
		<div class="row">
			<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
				<div class="row">
					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
						<img src="images/14302983_798261503662698_1161055520_n.png"
							class="img-responsive" alt="Image">
					</div>

					<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
						<div class="info">
							<h1>ute science magazine</h1>
							<p>Tạp chí khoa học Trường đại học Sư Phạm Kỹ Thuật TP.Hồ Chí
								Minh</p>
						</div>
					</div>
				</div>
				
				<!-- end row -->
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<div class="row">
							<ul class="login">
								<li class="dropdown"><a href="signin.html"
									class="dropdown-toggle text-center" data-toggle="dropdown">
										<c:choose>
											<c:when test="${empty sessionScope.user.uesrEmail }">
						                        		 Account
						                        	</c:when>
											<c:otherwise>
		                        						${sessionScope.user.uesrEmail }
		                        					</c:otherwise>
										</c:choose> <span class="caret"></span>
								</a>
									<ul class="dropdown-menu ">
										<c:choose>
											<c:when test="${empty sessionScope.user.uesrEmail}">
												<li><a href="signin.html">Sign in</a></li>
												<li><a href="forgot.html">Forgot Password</a></li>
												
											</c:when>
											<c:otherwise>
												<li><a href="profile.html">Profile</a></li>
												<li><a href="change.html">Change Password</a></li>
											</c:otherwise>
										</c:choose>
									</ul></li>
								<li><a href="about.html">About</a></li>
								<c:choose>
									<c:when test="${empty sessionScope.user.uesrEmail}">
										<li><a href="signin.html">Register</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="signout.html">Sign Out</a></li>
									</c:otherwise>
								</c:choose>

							</ul>
						</div>
						<div class="row">
							<form class="navbar-form navbar-left" role="search">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Search">
								</div>
							</form>
						</div>
						
					</div>
				</nav>
			</div>
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</div>
<!--/header_top-->