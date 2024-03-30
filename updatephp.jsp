<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<table border="1" align=center width="60%" cellpadding="16">
		<tr>
			<th colspan=4>PHP UPDATE</th>
		</tr>
		<tr>
			<td>Id</td>
			<td>Name</td>
			<td>City</td>
			<td>UPDATE</td>
		</tr>
		<%@ page import="java.io.*,java.sql.*" %>
		<%
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
			
			Statement st = cn.createStatement();
			ResultSet rs = st.executeQuery("select * from stud");
			while(rs.next())
			{
				%>
				<tr>
					<td><%=rs.getInt("id") %></td>
					<td><%=rs.getString("name") %></td>
					<td><%=rs.getString("city") %></td>
					<td><a href="update.jsp?id=<%=rs.getInt("id")%>">Edit</a></td>
				</tr>
				<%
			}
		}
		catch(Exception ex)
		{
			out.println("Error is :"+ex);
		}
		%>
</body>
</html>