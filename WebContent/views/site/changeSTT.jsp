<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<jsp:include page="layout/_header.jsp" />
<script type="text/javascript">
	$(document).ready(function() {
		$("#list-volume").DataTable({
			
		});
	});
</script>
<style type="text/css">
.clk:hover {
	background-color: #E0E0E0;
	cursor: pointer;
}
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
<div class="listAcountByRole">
	<div class="container">
		<div class="row">
			<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
				<jsp:include page="layout/_list-group-Master.jsp" />
			</div>

			<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
				<div class="panel panel-default">
					<div class="panel-heading">Panel Heading</div>
					<div class="panel-body">
						<form action="" class="form-inline">
							<h3 class="fail" id="result"></h3>
							<div class="form-group">
								<label>Mã bài viết:</label> <input id="inputArId" value="${id}"
									class="form-control" readonly="readonly"
									style="max-width: 200px; margin-top: 10px;"> <br />


							</div>
							
							<div class="form-group">
								<label>Tên bài viết:</label> <input id="inputArName" value="${articleName}"
									class="form-control" readonly="readonly"
									style="max-width: 200px; margin-top: 10px;"> <br />


							</div>
							<div class="form-group">
								<label for="volume">Mã volume: </label> <input name="inputVlId"
									class="form-control" readonly="readonly"
									style="max-width: 200px; margin-top: 10px;margin-bottom:10px;"> <br />
							</div>
							<div class="form-group">
								<label for="vlname">Tên volume: </label> <input
									name="inputVlName" class="form-control" readonly="readonly"
									style="max-width: 200px; margin-top: 10px;">
							</div>
						</form>

						<button type="button" id="choose" class="btn btn-success"
							disabled="disabled" style="margin-left: 82px;">Thêm vào volume</button>
					</div>
					<div class="panel-footer">
						<table class="table table-bordered" id="list-volume">
							<thead>
								<tr>
									<th>Mã Volume</th>
									<th>Tên volume</th>
									<th>Ngày tạo</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${not empty list}">
									<c:forEach var="l" items="${list}">
										<tr class="clk">
											<td class='org'>${l.id }</td>
											<td>${l.text}</td>
											<td>${l.date}</td>
										</tr>
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
				</div>
			<div class="panel panel-default">
					<div class="panel-heading">Thêm Volume mới</div>
					<div class="panel-body">
						<h3 class="fail" id="isresult"></h3>
						<form class="form-horizontal" style="padding:20px;">
							<div class="form-group" style="max-width:200px">
								<label>Tên Volume</label>
								<input type="text" name="inputNewVlName" class="form-control" placeholder="Tên volume" >
							</div>
							<div class="form-group" style="max-width:200px">
								<label>Mô tả Volume</label>
								<input type="text" name="inputNewDes" class="form-control" placeholder="Mô tả volume" >
							</div>
							<div class="form-group" style="max-width:200px">
								<label>Ngày Public</label>
								<input type="date" name="inputNewDate" class="form-control" placeholder="Ngày public" >
							</div>
							
							<button type="button" name="insert" class="btn btn-success">Thêm mới</button>
						</form>
					</div>
			</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		function processUpdate(data){
			if(data.result == 'success')
				{
					$('#result').removeClass('fail');
					$('#result').addClass('scs');
					$('#result').text('Thêm bài viết vào volume thành công');
					
				}
		};
		function processInsert(data){
			if(data.result == 'success')
				{
					$('#isresult').removeClass('fail');
					$('#isresult').addClass('scs');
					$('#isresult').text('Thêm volume thành công');
					var html = '<tr class="clk odd"><td class="org">'+data.id+'</td><td>'+data.text+'</td><td>'+data.date+'</td></tr>';
					var x = $('#list-volume tbody:last');
					
					$('#list-volume > tbody:last-child').append(html);
				}
			else
				{
				$('#isresult').removeClass('scs');
				$('#isresult').addClass('fail');
				
				if(data.type == 'hasVolume')
					{					
					$('#isresult').text('Thêm volume thất bại , đã tồn tại volume');
					}
				else
					{
					if(data.type== "beforeDate")
						{
						$('#isresult').text('Thêm volume thất bại, bạn không thể chỉnh ngày public trước ngày hiện tại');
						}
					else
						{
						$('#isresult').text('Thêm volume thất bại, lỗi!');
						}
					
					}
				
				}
	
		};
		$('button[name=insert]').click(function(){
			var text = $('input[name=inputNewVlName]').val();
			var des = $('input[name=inputNewDes]').val();
			var date =  $('input[name=inputNewDate]').val();
			
			var dataToSubmit = {
					'text':text,
					'des':des,
					'date':date,
					'type':"insert"
			}
			$.ajax({
				url : 'ChangeStatus.html',
				type : 'POST',
				data : dataToSubmit,
				dataType : 'json',
				success : processInsert
			});
			
		});
		$('.clk').click(function() {
			var $row = $(this); // Finds the closest row <tr>
			$tds = $row.find("td"); // Finds all children <td> elements
			$row.addClass("active");
			$row.siblings().removeClass("active");
			$('input[name=inputVlId]').val($tds[0].innerHTML);
			$('input[name=inputVlName]').val($tds[1].innerHTML);
			$('#choose').removeAttr('disabled');
			
			$('#choose').click(function(){
				var articleId = $('#inputArId').val();
				var volumeId = $('input[name=inputVlId]').val();
				var dataToSubmit = {
						'articleId': articleId,
						'volumeId' : volumeId,
						'type': 'accept'
				}
				$.ajax({
					url : 'ChangeStatus.html',
					type : 'POST',
					data : dataToSubmit,
					dataType : 'json',
					success : processUpdate
				});
				
			});
		});
		
		

	});
</script>
<jsp:include page="layout/_footer.jsp" />