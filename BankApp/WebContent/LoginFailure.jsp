<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("Invalid CustomerId or Password");
	%>
	<form action="LoginController">
		<table>
			<tr>
				<td><label>CustomerId</label></td>
				<td><input type="text" name="customerid" required /></td>
			</tr>

			<tr>
				<td><label>Password</label></td>
				<td><input type="text" name="password" required /></td>
			</tr>

			<tr>
				<td><input type="submit" value="login" /></td>
				<td><a href="">Forgot Password ?</a></td>
			</tr>

		</table>
	</form>
</body>
</html>