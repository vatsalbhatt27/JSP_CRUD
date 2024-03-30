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
			<th colspan=4>ORACLE DATA</th>
		</tr>
		<tr>
			<td>Rno</td>
			<td>Name</td>
			<td>City</td>
			<td>DELETE</td>
		</tr>
		<%@ page import="java.io.*,java.sql.*" %>
		<%
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl1","scott","tiger");
		
			Statement st = cn.createStatement();
			ResultSet rs = st.executeQuery("select * from mk1");
			while(rs.next())
			{
				%>
				<tr>
					<td><%=rs.getInt("RNO") %></td>
					<td><%=rs.getString("NAME") %></td>
					<td><%=rs.getString("CITY") %></td>
					<td><a href="deleteorcl.jsp?RNO=<%=rs.getInt("RNO")%>">Delete</a></td>
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