<%@ page pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.scs{
	background-color: #00E676;
	color:white;
	text-align: center;
	font-size: 15px;
	font-weight: bold;
}
.fail{
	background-color: #F44336;
	color:white;
	text-align: center;
	font-size: 15px;
	font-weight: bold;
	
 	 
}
</style>
<h4 class="mq_h4">Danh sách thông báo</h4>
<h3 id="result" class="scs"></h3>
<table class="table table-striped" id="tb0">
	<thead>
		<tr>
			<th>STT</th>
			<th>Email</th>
			<th>Nội dung</th>	
			<th>Chi tiết bài viết</th>
			<th>Đánh dấu là đã đọc</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="l" items="${list}" varStatus="loop">
			<tr>
				<td>${loop.index +1 }</td>
				<td>${l.editorEmail}</td>
				<td>${l.text}</td>				
				<td style="padding-left: 25px;"><a
					href="article.html?id=${l.articleId}"><span
						class="glyphicon glyphicon-pencil" aria-hidden="true" style="margin-left:20px"></span></a></td>
				<td><button type="button" data-id="${l.id}" class="btn btn-success" name="btnseen" style="margin-left:35px; ">Đã đọc</button></td>
			</tr>

		</c:forEach>

	</tbody>
</table>
<script type="text/javascript">
	function processUpdate(data)
	{
		if(data.result == 'success')
			{
				$("#result").text('Đã chỉnh sửa trạng thái');
			}
	}
	$(document).ready(function(){
		$('#tb0').DataTable({
			"pagingType" : "full_numbers"
		});
		$('button[name=btnseen]').click(function(){
			var id = $(this).data("id");
			var dataToSubmit = {
					'id': id
			}
			$(this).attr('disabled','disabled');
			$.ajax({
				url : 'listmessage.html',
				type : 'POST',
				data : dataToSubmit,
				dataType : 'json',
				success : processUpdate
			});
		});
	});
</script>
