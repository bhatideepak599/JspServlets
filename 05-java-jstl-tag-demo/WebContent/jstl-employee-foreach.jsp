<%@page import="com.techlabs.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List"%>
<%@ page import="com.techlabs.model.Employee"%>
<%@ page import="java.util.ArrayList"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		List<Employee> lst = new ArrayList<>();
	lst.add(new Employee("Deepak", 1, 50000));
	lst.add(new Employee("Sonu", 2, 10000));
	lst.add(new Employee("Rahul", 3, 20000));
	lst.add(new Employee("Bhumika", 4, 30000));
	pageContext.setAttribute("theEmployees", lst);
	%>

	<table border 2px>
		<h1>
			<b>Employee Details </b>
		</h1>
		<tr>
			<td>Employee ID</td>
			<td>Employee Name</td>
			<td>Employee Salary</td>
			<td>Salary Type</td>

		</tr>

		<c:forEach var="emp" items="${theEmployees }">
			<tr>
				<td>${emp.id }</td>
				<td>${emp.name }</td>
				<td>${emp.salary }</td>
				<td>
					<c:if test="${emp.salary >20000 }">
						High Salary
					</c:if>
					<c:if test="${emp.salary <=20000}">
						Low Salary
					</c:if>
					
				</td>

			</tr>
			<br>

		</c:forEach>

	</table>
</body>
</html>