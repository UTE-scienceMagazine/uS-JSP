
<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date" />

<jsp:include page="layout/_header.jsp" />

<div class="profileViewer">
	<div class="container">
		<div class="row">
			<br>
			<div class="profile">
				<div class="row">
					<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
						<jsp:include page="layout/_list-group-Viewer.jsp"/>
					</div>
					<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
						<div class="row">
							<h4 class="mq_h4">Thông tin tài khoản</h4>
							<div class="col-lg-5 mq_leftrow_inf ">
								<p>Thông tin liên hệ</p>
							</div>
							<div class="col-lg-5 mq_rightform_label">
								<!-- Contact info -->
								<div class="form-group" style="width: 450px;">
									<label for="email">Email</label> 
									<input type="email"	class="form-control" placeholder="Email" id="email"> 
									<label for="number">Điện thoại</label> <input type="number" class="form-control" placeholder="Điện thoại" id="number">
								</div>
								<hr>
							</div>
							<!-- /Contact info-->

							<div class="col-lg-5 mq_leftrow_inf ">
								<p>Thông tin cá nhân</p>
							</div>
							<div class="col-lg-5 mq_rightform_label">
								<!-- Person info -->
								<div class="form-group" style="width: 450px;">
									<!--Form group -->
									<label for="name">Họ và tên</label> <input type="text"
										class="form-control" placeholder="Họ và tên" id="text">
									<div class="form-group">
										<!--Gender select -->
										<lable for="name" style="font-weight:bold;">Giới tính</lable>
										<div class="mq_gender_select">
											<Form>
													<label class="radio-inline"><input type="radio" value="view" name="sex" checked="checked"> Nam</label>
													<label class="radio-inline"><input type="radio" value="tester" name="sex">Nữ</label>
											</Form>
										</div>
									</div>
									<!-- / Gender select -->
									<div class="form_group birthday">
										<!-- Birth day -->
										<label>Ngày sinh
											<hr>
										</label> 
										<select name="myvne_day_of_birth">
											<option>Ngày</option>
											<c:forEach var="i" begin="1" end="31">
												<option value="${i}">${i}</option>
											</c:forEach>
											
										</select> 
								
										<select name="myvne_month_of_birth">
											<option>Tháng</option>
											<c:forEach var="i" begin="1" end="12">
												<option value="${i}">${i}</option>
											</c:forEach>
											
										</select>
										
										<fmt:formatDate var="year" value="${now}" pattern="yyyy" />
										<select name="myvne_year_of_birth">
											<option>Năm</option>
											<c:forEach var="i" begin="1970" end="${year}">
												<option value="${i}">${i}</option>
											</c:forEach>
										</select>


									</div>
									<!-- /Birth day -->
									<label for="id_number">Chứng minh nhân dân</label> <input
										type="number" placeholder="Chứng minh nhân dân" class="form-control" id="number">
								</div>
								<!-- /Form group -->
								<button class="btn btn-default">Lưu</button>
							</div>
							<!-- /Person info -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="layout/_footer.jsp"></jsp:include>