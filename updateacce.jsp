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
			ResultSet rs = st.executeQuery("select * from mk");
			while(rs.next())
			{
				%>
				<form  action="updateaccessproc.jsp" method="POST">
				<input type="hidden" name="RNO" value="<%=rs.getString("RNO") %>">
				<table border=2 align=center>
					<tr>
						<td>RNO</td>
						<td>NAME</td>
						<td>CITY</td>
					</tr>
					<tr>
						<td><input type="text" name="RNO" value="<%=rs.getString("RNO") %>"></td>
						<td><input type="text" name="NAME" value="<%=rs.getString("NAME") %>"></td>
						<td><input type="text" name="CITY" value="<%=rs.getString("CITY") %>"></td>
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