<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<form:form method="post" commandName="todo">
		<form:hidden path="id" />
		<fieldset class="form-group">
			<form:label path="desc">Description</form:label>
			<form:input path="desc" type="text" class="form-control"
				required="required" />
			<form:errors path="desc" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="targetDate">Target Date</form:label>
			<form:input path="targetDate" type="text" class="form-control"
				required="required" />
			<form:errors path="targetDate" cssClass="text-warning" />
		</fieldset>
		<button type="submit" class="btn btn-success">Submit</button>
	</form:form>
</div>

<%@ include file="common/footer.jspf"%>

<script>
	$('#targetDate').datepicker({
		format : 'dd/mm/yyyy'
	});
</script>



<!-- 
		<html>
		<head>
		<title>Your Todo</title>
		<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
			rel="stylesheet">
		</head>
		<body>
		
			<div class="container">
				<form action="/add-todo" method="post">
					<fieldset class="form-group">
						<label>Description</label>
						<input name="desc" type="text" class="form-control" required="required"/>
					</fieldset>
					<button type="submit" class="btn btn-success">Add</button>
				</form>
			</div>
		
			<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
			<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		
		</body>
		</html>

 -->