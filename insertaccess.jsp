<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<%@ page import="java.io.*,java.sql.*" %>
		<% 
		try
		{
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			Connection cn = DriverManager.getConnection("jdbc:ucanaccess://F:/MY-WORK/TY-2022/J2EE/Database.accdb");
			Statement st = cn.createStatement();
			st.executeUpdate("insert into mk values(7,'CCC','Rajkot')");
			out.print("Record insert Succefully");
		}
		catch(Exception ex)
		{
				ex.printStackTrace();
		}
		%>
</body>
</html>