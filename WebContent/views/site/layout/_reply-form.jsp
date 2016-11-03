<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<legend>Reply</legend>
<fieldset style="margin-left: 10px" class="rep-form${l.id}">
	<form role="form">

		<div class="form-group">
			
			<label for="">Message</label>
			<textarea type="text" class="form-control rep-mess" id="" placeholder="Massage"></textarea>
		</div>
		<button type="submit" value="reply" class="reply-submit btn btn-primary">Reply</button>
	</form>
</fieldset>



