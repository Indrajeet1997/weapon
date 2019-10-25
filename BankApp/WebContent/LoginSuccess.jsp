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
		out.println("hello," + session.getAttribute("NAME") + " you have successfully loged in ");
	%><br/>
	<a href="Transfer.jsp">Third party Transfer</a>
	<br/>
	<a href="BalanceController">Check Balance</a>
	</br>
	<a href="Loan.jsp">Apply Loan</a>
	</br>
	<a href="ChangePassword.jsp"> Change password</a>
	</br>
	<a href="">Mini Statement</a>
	</br>
	<a href="">Logout </a>
	</br>
</body>
</html>