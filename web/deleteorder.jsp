<%-- 
    Document   : deleteorder
    Created on : Nov 11, 2017, 10:33:47 PM
    Author     : madhumpandurangi
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
      final String DB_PASS = "madhu";
	
	String user = request.getParameter("userid");
	
       
	try{
 
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	con = DriverManager.getConnection(DB_URL,DB_USER,DB_PASS);
	st = con.createStatement();

        st.executeUpdate("insert into order_generated(userid) values('"+user+"')");
        String QueryString="select * from order_generated";
        PreparedStatement psm=con.prepareStatement(QueryString);
	rs = st.executeQuery(QueryString);
	if(rs.next()){
	
	response.sendRedirect("order_confirm.jsp");
	}
	else
	out.print("User Name not Valid..");
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
        
    </body>
</html>
