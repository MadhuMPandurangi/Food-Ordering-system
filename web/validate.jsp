<%-- 
    Document   : reg
    Created on : Oct 13, 2017, 7:04:44 AM
    Author     : Madhu M P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*"%>

<%
	Statement st=null;
	Connection con=null;
	ResultSet rs=null;

 
   // JDBC driver name and database URL
   	  final String DB_URL  = "jdbc:mysql://localhost:3306/miniproject";
	 //  Database credentials
      final String DB_USER = "root";
      final String DB_PASS = "root";
	
	String user = request.getParameter("userid");
	String pass = request.getParameter("pwd");

	try{
 
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	con = DriverManager.getConnection(DB_URL,DB_USER,DB_PASS);
	st = con.createStatement();

	String QueryString = "select userid,password from users where userid='"+user+"' and password = '"+pass+"'";
	rs = st.executeQuery(QueryString);
	if(rs.next()){
	
	response.sendRedirect("foodhome.jsp");
	}
	else
	out.print("User Name and password are not Valid..");
	}
	
	catch (Exception e){
  out.print(e);
	}
	finally{
	st.close();
	rs.close();
	con.close();
	}
%>

    <body>
        
    </body>
</html>
