<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<form method="post" action="loginpro.jsp"> 
		<table border=1 align=center cellpadding=10>
			<tr>
				<th colspan=2><h3>LOGIN</h3></th>
			</tr>
			<tr>
				<td>Employee Name:</td>
				<td><input type="text" name="nm"></td>
			</tr>
			<tr>
				<td>Employee Number:</td>
				<td><input type="text" name="pwd"></td>
			</tr>
			<tr align=center>
				<td colspan=2><input type="submit" name="submit" value="Submit"></td>
			</tr>
		</table>
		</form>
</body>
</html>