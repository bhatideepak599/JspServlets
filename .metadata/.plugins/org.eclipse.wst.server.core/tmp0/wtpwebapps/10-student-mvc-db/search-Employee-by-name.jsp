<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Employee</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">

		<div class="text-center">

			<p class="h2">Search Employee By Name</p>

		</div>
		<hr>
		<form action ="Student">
			<input type="hidden" name="command" value="searchbyname"/>
			
			
				
				
			</div> 
			<div class="mb-3">
				<label for="name" class="form-label">Name</label> <input type="text" class="form-control"
					id="name" name="name">
				
			</div>
			
			<button type="submit" class="btn btn-primary">Search</button>
		</form>

	</div>

</body>
</html>