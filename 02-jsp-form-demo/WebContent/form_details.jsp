<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	<div class="lead"> First Name : <%=request.getParameter("first_name") %></div>
	<div class="lead"> Last Name : <%=request.getParameter("Last_name") %></div>
	<div class="lead"> City : <%=request.getParameter("city") %></div>
	<div class="lead"> Gender : <%=request.getParameter("gender") %></div>
	
	<p class="lead"> Languages Known :
		<%   
			String[] lan=request.getParameterValues("languages");
			if(lan!=null){
				String s=String.join(",",lan);
				out.println(s);
			}
			else{
				out.println("None");
			}
			
		%>
	
	
</body>
</html>