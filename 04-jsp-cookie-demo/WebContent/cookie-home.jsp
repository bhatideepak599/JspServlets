<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="javax.servlet.http.Cookie" %>
 
 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 
	 <%
	 String favLang="C++";
	 
	 Cookie[] cookies=request.getCookies();
	 
	 if(cookies!=null){
		 for(Cookie c:cookies){
			 if(c.getName().equals("favlanguage1")){
				 favLang=c.getValue();
			 }
		 }
	 }
	 
	 %>
	 <h2> Your Preferred language is <%=favLang %></h2>
	 <a href="cookie-form.jsp">Change Your Favorite Language</a>
</body>
</html>