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
		String name=request.getParameter("name");
		String mno=request.getParameter("mno");
		String pass=request.getParameter("pass");
		String email=request.getParameter("email");
	
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaonline","root","");
			
			 PreparedStatement ps=cn.prepareStatement("insert into  registration (name,mno,pass,email,type)values(?,?,?,?,'user')"); 
			ps.setString(1,name);
			ps.setString(2,mno);
			ps.setString(3,pass);
			ps.setString(4,email);
		
		   	ps.executeUpdate(); 
            out.print("<h1>You are successfully registered...</h1>");
			//out.println("3");
		}
	catch (Exception ex)
          {
               ex.printStackTrace();
          }  
          out.close();  

		%>
</body>
</html>