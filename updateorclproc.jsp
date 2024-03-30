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
				Class.forName("oracle.jdbc.driver.OracleDriver");
				cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl1","scott","tiger");
				String str="Update mk1 set RNO=?,NAME=?,CITY=? where RNO="+RNO;
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