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

	<c:set var="name" value="Deepak"></c:set>
	<h1>Welcome ${name }</h1>


	<c:if test="${name.length()>=5 }">
		<h1>Name ${name} is 5 or more character Long</h1>
	</c:if>
<hr>
	<c:choose>
		<c:when test="${name.length()>13 }">
			<h1>Deepak</h1>
			
		</c:when>
		<c:when test="${name.length()>15 }">
			<h1>Bhati</h1>
			<hr>
		</c:when>
		<c:when test="${name.length()>6 }">
			<h1>6</h1>
		</c:when>
		<c:otherwise>
			<h1>otherwise</h1>
		</c:otherwise>


	</c:choose>

</body>
</html>