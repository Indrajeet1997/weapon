<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="TransferController">
		<table>
			<tr>
				<td><label>Third party transferid</label></td>
				<td><input type="text" name="tpaccno" required /></td>
			</tr>

			<tr>
				<td><label>Amount Transfer</label></td>
				<td><input type="text" name="transamt" required /></td>
			</tr>

			<tr>
				<td><input type="submit" value="TRANSFER" /></td>
			</tr>
		</table>
	</form>
</body>
</html>