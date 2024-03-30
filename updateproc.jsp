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
			String id=request.getParameter("id");
			String name=request.getParameter("name");
			String city=request.getParameter("city");
			Connection cn;
			PreparedStatement ps;
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
			String str="Update stud set id=?,name=?,city=? where id="+id;
			ps = cn.prepareStatement(str);
			ps.setString(1,id);
			ps.setString(2,name);
			ps.setString(3,city);
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