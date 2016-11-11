<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page pageEncoding="utf-8"%>
<jsp:include page="layout/_header.jsp" />
<div class="profileMaster">
	<div class="container">
		
			<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
				<c:if test="${roleId == 2 }">
					<jsp:include page="layout/_list-group-Tester.jsp"/>
				</c:if>
				<c:if test="${roleId == 5 }">
					<jsp:include page="layout/_list-group-Master.jsp"/>
				</c:if>
				
			</div>
		
		
			<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
				<font color="red"><c:if test="${requestScope.scsMs == true }">
           				 <c:out value="${errorMess}" />
           		 </c:if></font>
				<div class ="article-post"> <!-- Post infomation -->
			<fieldset id="fs">
			
			<form action="feedback.html" method="POST" role="form">
				<legend class="text-center">Ý KIẾN PHẢN HỒI</legend>
				<div class="form-group">
					<label for="">Tiêu đề</label>
					
					<input name="title" type="text"
					class="form-control" id="" value="${article.title}" disabled="disabled"
					placeholder="Tiêu đề"> 

					<input name="articleId" type="hidden" value="${article.id}">

					<label for="">Tóm tắt</label>
					<textarea id="tomtat" name="description" class="form-control" rows="8" cols="80">${feedback.description}
				</textarea>

					<label for="">Ý nghĩ bài viết</label> 
					<textarea id="ynghia" name="meaning" class="form-control" rows="8" cols="80">${feedback.meaning}
					</textarea>
					

					<label for="">Nội dung bài viết đã được công bố trên các ấn phẩm khác chưa? Nếu có, nêu cụ thể ấn phẩm đó.</label> 	

					<textarea id="congbo" name="license" class="form-control" rows="8" cols="80">${feedback.license}
					</textarea>


					<label for="">Kết luận.</label> 	

					<textarea id="ketluan" name="result" class="form-control" rows="8" cols="80">${feedback.result}</textarea>
					
					

					<label for="">Nội dung cần chỉnh sửa lại.</label> 	

					<textarea id="chinhsua" name="neededit" class="form-control" rows="8" cols="80">${feedback.result}</textarea>
					
					

					
					<script type="text/javascript" lang="javascript">
						CKEDITOR.replace( 'tomtat' );
						CKEDITOR.replace( 'ynghia' );
						CKEDITOR.replace( 'chinhsua' );
						CKEDITOR.replace( 'ketluan' );
						CKEDITOR.replace( 'congbo' );
					</script>
					
					

				</div>
				<button name="post" type="submit" class="btn btn-primary">Submit</button>
			</form>
			
			</fieldset>
			
			
			<c:if test="${roleId == 5 }">
				<script type="text/javascript">
				var x = document.getElementById("fs");
				x.disabled="disabled";
				</script>
			</c:if>

		</div>	
			</div>
		
	</div>
</div>

<jsp:include page="layout/_footer.jsp"></jsp:include>