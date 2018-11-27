<%-- 
    Document   : order
    Created on : Nov 6, 2017, 9:16:52 AM
    Author     : madhumpandurangi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>order</title>
    </head>
    <body>
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.*"%>
<%
    String itemnames = request.getParameter("itemnames");//in this line 'order' holds the value that is passed from the previous page and stores in string variable order
      
    String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "miniproject";
String userId = "root";
String password = "madhu";

try {
Class.forName(driverName);
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

  java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","madhu");

PrintWriter pw = response.getWriter();
String query = "delete from hallithindi where itemnames='"+itemnames+"'";//here, where the value is to stored and in which column is mentioned
PreparedStatement ps = con.prepareStatement(query);

ps.execute();

} 
catch (ClassNotFoundException e) {
e.printStackTrace();
}
response.sendRedirect("halli_delete.jsp");//going back to the page where it is redirected
%>
        
        
        
    </body>
</html>
