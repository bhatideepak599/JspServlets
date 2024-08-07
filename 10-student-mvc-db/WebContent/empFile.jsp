<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
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

			<p class="h2">Employee Details</p>

		</div>

		<hr>
		<div class="d-flex justify-content-between">
  <a href="add-Employee.jsp" class="btn btn-primary">Add Employee</a>
  <div>
    <a href="search-Employee-by-name.jsp" class="btn btn-info">Search By Name</a>
    <a href="search-Employee-by-id.jsp" class="btn btn-info">Search By ID</a>
  </div>
</div>
		<table class="table table-striped">

			<thead>

				<tr>

					<th>Employee ID</th>

					<th>Employee Name</th>

					<th>Employee Salary</th>

					<th>Employee Department</th>
					<th>Update</th>
					<th>Delete</th>

				</tr>

			</thead>

			<tbody>

				<c:forEach var="student" items="${theStudentList}">

					<tr>

						<td>${student.id}</td>
						<td>${student.name}</td>
						<td>${student.salary}</td>

						<td>${student.dept}</td>

						<td><a href="Student?command=load&Id=${student.id}"
							class="btn btn-secondary">Update</a></td>
						<td><a href="Student?command=delete&Id=${student.id}"
							class="btn btn-warning">Delete</a></td>
					</tr>

				</c:forEach>

			</tbody>

		</table>

	</div>

</body>

</html>