<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="ChangePasswordController">
		<table>
			<tr>
				<td>OLD PASSWORD</td>
				<td><input type="password" name="op" required /></td>
			</tr>

			<tr>
				<td>NEW PASSWORD</td>
				<td><input type="password" name="np" required /></td>
			</tr>

			<tr>
				<td>CONFIRM NEW PASSWORD</td>
				<td><input type="password" name="cnp" required /></td>
			</tr>

			<tr>
				<td><input type="submit" value="CHANGE" /></td>
			</tr>

		</table>
	</form>
</body>
</html>