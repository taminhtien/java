<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form Processing</title>
</head>
<body>
	<h3>Parameter values: </h3>
	<%
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String gender = request.getParameter("gender");
		String[] addresses = request.getParameterValues("address");
	%>
	
	User Name: <%= userName %>
	Password: <%= password %>
	First Name: <%= firstName %>
	Last Name: <%= lastName %>
	Gender: <%= gender %>
	<br>
	<%
		if (addresses != null) {
			for (String address: addresses) {
				%>
			Address: <%=address %>	
			<br>
		<%
			}
		}
 	%>
</body>
</html>