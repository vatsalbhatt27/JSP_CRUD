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
		String nm =request.getParameter("nm");
		String pwd =request.getParameter("pwd");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
			
			Statement st=cn.createStatement();
			ResultSet rs = st.executeQuery("select * from mk where name='"+nm+"' and pass='"+pwd+"'");

			int flag=0;
			while(rs.next())
			{
				String name=rs.getString(1);
				if(rs.getString(4).equals(pwd))
					{
						flag=1;
						break;
					}
			}
			if(flag==1)
			{
				%>
				<jsp:include page="home.jsp"/>
				<%
				HttpSession  s1 = request.getSession();
				out.print("Welcome "+nm);
			}
			else
			{	
				out.print("Invalid Username or Password......");
				%>
				
				<jsp:include page="login.jsp"/>
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