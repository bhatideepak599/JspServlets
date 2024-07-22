<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Expression tags  -->
	<h1>Hello world</h1>
	<br> Today's Date is
	<%=new java.util.Date()%>
	<br>

	<%-- Scriptlet tags<% %> --%>
	<%
		for (int i = 0; i < 5; i++) {
		out.println("<h4>number " + i + " </h4>");
	}
	%>
	
	<!-- Declaration tags -->
	<%! 
	String convertUpper(String s){
		return s.toUpperCase();
	}%>
	<%-- <%= convertUpper("Hello world") %> --%>
	<br>
	<%! 
	
	String convertFirstUpper(String s){
		
		String ans="";
		String temp="";
		for(int i=0;i<s.length();i++){
			if(s.charAt(i)==' '){
				if(temp.length()!=0)
				ans+= temp.substring(0,1).toUpperCase()  + temp.substring(1);
				ans+=" ";
				
				temp="";
				continue;
			}
			temp+=s.charAt(i);
			
		}
		if(temp.length()!=0)
			ans+= temp.substring(0,1).toUpperCase()  + temp.substring(1);
		return ans;
	}%>
	<%
	
		out.println(convertFirstUpper("code is working fine."));
	%>
	
	

</body>
</html>