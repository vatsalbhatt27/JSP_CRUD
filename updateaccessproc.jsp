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
			String NAME=request.getParameter("NAME");
			String CITY=request.getParameter("CITY");
			Connection cn;
			PreparedStatement ps;
			try
			{
				
				Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
				cn = DriverManager.getConnection("jdbc:ucanaccess://F:/MY-WORK/TY-2022/J2EE/Database.accdb");
				String str="Update mk set RNO=?,NAME=?,CITY=? where RNO="+RNO;
				ps = cn.prepareStatement(str);
				ps.setString(1,RNO);
				ps.setString(2,NAME);
				ps.setString(3,CITY);
				int i=ps.executeUpdate();
				out.print("Record Updated Successfully");
			}
			catch(Exception ex)
			{
				out.println("Error is :"+ex);
			}
			%>
</body>
</html>