<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String favlanguage=request.getParameter("favlang");
	Cookie myCookie=new Cookie("favlanguage1",favlanguage);
	
	myCookie.setMaxAge(60*10);
	response.addCookie(myCookie);
	%>
	<hr>
	<h4> We set your Favorite language . Check your home Page</h4>
	<a href="cookie-home.jsp" >Cookie Home Page</a>
</body>
</html>