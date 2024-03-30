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
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
			
			Statement st = cn.createStatement();
			ResultSet rs = st.executeQuery("select * from stud where id="+id);
			while(rs.next())
			{
				%>
				<form  action="updateproc.jsp" method="POST">
				<input type="hidden" name="id" value="<%=rs.getString("id") %>">
				<table border=2 align=center>
					<tr>
						<td>ID</td>
						<td>NAME</td>
						<td>CITY</td>
					</tr>
					<tr>
						<td><input type="text" name="id" value="<%=rs.getString("id") %>"></td>
						<td><input type="text" name="name" value="<%=rs.getString("name") %>"></td>
						<td><input type="text" name="city" value="<%=rs.getString("city") %>"></td>
					</tr>
					<tr align=center>
						<td colspan="3"><input type="submit" value="submit" name="Submit"></td>
					</tr>
				</table>
				</form>
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