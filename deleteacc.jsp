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
			String RNO=request.getParameter("RNO");
		try
		{
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			Connection cn = DriverManager.getConnection("jdbc:ucanaccess://F:/MY-WORK/TY-2022/J2EE/Database.accdb");
			
			Statement st = cn.createStatement();
			int i= st.executeUpdate("Delete  from mk where RNO="+RNO);
			out.print("Record Delete SuccessFully");
		}
		catch(Exception ex)
		{
			out.println("Error is :"+ex);
		}
		%>
</body>
</html>