<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.techlabs.model.StringUtil" %>	
<%@ page import="java.util.List" %>
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
	<form action="#" method="get">

		<div class="col-sm-10 mb-3">
			<input type="text" name="item" class="form-control"
				placeholder="Enter a todo task">
			</div>
		<div class="col-sm-10">
			<input type="submit" value="Add Todos" class="btn btn-primary">
		</div>

	</form>
<hr>

<ul class="list-group">

<%		
		List<String> todolst=(List<String>)session.getAttribute("todoitemVar");
		if(todolst==null){
			todolst=new ArrayList<>();
			session.setAttribute("todoitemVar",todolst);
		}
		
		String todoItem = request.getParameter("item");
		if(!todoItem.trim().equals("")){
			todolst.add(todoItem);
		}
		for(String item : todolst){
            out.println("<li class=\"list-group-item\">"+item+"</li>");
          }
	
	%>
	 </ul>
	
<%= StringUtil.concat("Good", " Morning") %>
</body>
</html>