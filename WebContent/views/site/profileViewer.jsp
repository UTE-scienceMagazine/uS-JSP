
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="now" class="java.util.Date" />

<jsp:include page="layout/_header.jsp" />
<s:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost/utescience"
                       user="root" password=""/>
 
      <s:query dataSource="${ds}" var="user">
        select email, name,phone,sex,identitycard,  Date_Format(birthday,'%d') as dob ,Date_Format(birthday,'%m') as mob ,Date_Format(birthday,'%y') as yob 
        from user
        where user.email='${sessionScope.email}'
      </s:query>
      
      	<c:set var="email" value="${user.rowsByIndex[0][0]}" scope="page" />
       	<c:set var="name" value="${user.rowsByIndex[0][1]}" scope="page" />
    	<c:set var="phone" value="${user.rowsByIndex[0][2]}" scope="page" />
    	<c:set var="s" value="${user.rowsByIndex[0][3]}" scope="page" />
    	<c:set var="bdate" value="${user.rowsByIndex[0][5]}" scope="page" />
    	<c:set var="mdate" value="${user.rowsByIndex[0][6]}" scope="page" />
    	<c:set var="ydate" value="${user.rowsByIndex[0][7]}" scope="page" />
    	<c:set var="idc" value="${user.rowsByIndex[0][4]}" scope="page" />
    	
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
									<input type="email"	class="form-control" placeholder="Email" id="email" value= '<c:out value="${pageScope.email}"></c:out>'> 
									<label for="number">Điện thoại</label> <input type="number" class="form-control" placeholder="Điện thoại" id="number" value= '<c:out value="${pageScope.phone}"></c:out>'>
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
									<label for="name">Họ và tên</label>
									 <input type="text" class="form-control" placeholder="Họ và tên" id="text" value= '<c:out value="${pageScope.name}"></c:out>'>
									<div class="form-group">
										<!--Gender select -->
										<lable for="name" style="font-weight:bold;">Giới tính</lable>
										<div class="mq_gender_select">
											<Form>										
													<label class="radio-inline"><input type="radio" value="view" name="sex" id="male"> Nam</label>
													<label class="radio-inline"><input type="radio" value="tester" name="sex" id="female">Nữ</label>
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
											<c:forEach var="i" begin="1970" end="2016">
												<option value="${i}">${i}</option>
											</c:forEach>
										</select>


									</div>
									<!-- /Birth day -->
									<label for="id_number">Chứng minh nhân dân</label> <input
										type="number" placeholder="Chứng minh nhân dân" class="form-control" id="number" value= '<c:out value="${pageScope.idc}"></c:out>'>
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
	<script type="text/javascript">
	$( document ).ready(function() {
		var s = <c:out value="${pageScope.s}"></c:out> ;
		var male = document.getElementById("male");
		var female = document.getElementById("female");
		if(s == 1)
			male.checked="checked";
		else
			female.checked="checked";
		
		var d = <c:out value="${pageScope.bdate}"></c:out> ;
		var date = document.getElementsByName("myvne_day_of_birth")[0];
		date.selectedIndex = d;
	
		var m = <c:out value="${pageScope.mdate}"></c:out> ;
		var month = document.getElementsByName("myvne_month_of_birth")[0];
		month.selectedIndex = m;
		
		var y = <c:out value="${pageScope.ydate}"></c:out> ;
		var year = document.getElementsByName("myvne_year_of_birth")[0];
		year.selectedIndex = y;
	});
		
			
		
		
	</script>

<jsp:include page="layout/_footer.jsp"></jsp:include>