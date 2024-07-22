<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border 2px>
		<h1>
			<b>Student Details </b>
		</h1>
		<tr>
			<td>Student ID</td>
			<td>First Name</td>
			<td>Last Name</td>
			<td>Email </td>

		</tr>

		<c:forEach var="student" items="${theStudentList }">
			<tr>
				<td>${student.id }</td>
				<td>${student.firstname }</td>
				<td>${student.lastname }</td>
				<td> ${student.email } </td>

			</tr>
			<br>

		</c:forEach>

	</table>
</body>
</html>