<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Form</title>
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
	<div class="container mt-5">
	<h2 class="mt-3 text-center">Student Form</h2>
	<hr>
	<form action="form_details.jsp" method="POST">
		<div class="col-sm-10 mb-3">
		
		<label for="first_name" class="form-label">First Name</label> 
		<input type="text" name="first_name" class="form-control" id="first_name">
		</div>

		<div class="col-sm-10 mb-3">
		<label for="Last_name" class="form-label">Last Name</label> 
		<input	type="text" name="Last_name" class="form-control" id="Last_name">
		</div>
		
		<div class="col-sm-10 mb-3">
			<label for="city" class="form-label">City</label>
			<select class="form-select" id="city" name="city" aria-label="Default select ">
			<option value="Mumbai"> Mumbai</option>
			<option value="Delhi"> Delhi</option>
			<option value="Mumbai"> Mumbai</option>
			
			</select>
			</div>
			
			<div class="col-sm-10 mb-3">
		<div class="form-check">
			<label for="gender" class="form-label">Gender</label>
			<br>
		  <input class="form-check-input" type="radio" name="gender" id="gender-male">
		  <label class="form-check-label" for="gender-male">
		    Male
		  </label>
		</div>
		<div class="form-check">
		  <input class="form-check-input" type="radio" name="gender" id="gender-female" checked>
		  <label class="form-check-label" for="gender-female">
		    Female
		  </label>
		</div>
		</div>
		<div class="col-sm-10 mb-3">
            <label>Languages</label>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="language" value="Kannada" id="kannada">
                <label class="form-check-label" for="kannada">
                  Kannada
                </label>
              </div>

              <div class="form-check">
                <input class="form-check-input" type="checkbox" name="language" value="English" id="english" >
                <label class="form-check-label" for="english">
                  English
                </label>
              </div>

              <div class="form-check">
                <input class="form-check-input" type="checkbox" name="language" value="Hindi" id="hindi" >
                <label class="form-check-label" for="hindi">
                  Hindi
                </label>
              </div>

              <div class="form-check">
                <input class="form-check-input" type="checkbox" name="language" value="Tamil" id="tamil" >
                <label class="form-check-label" for="tamil">
                  Tamil
                </label>
              </div>
              
        </div>
		
		<div class=" col-sm-10 text-center"> 
			<input type="submit" value="Submit Button" class="btn btn-primary"> </button>
			</div>
		</div>
		
		
	</form>
</body>
</html>