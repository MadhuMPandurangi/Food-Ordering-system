<%-- 
    Document   : view_order
    Created on : Nov 9, 2017, 8:18:22 AM
    Author     : madhumpandurangi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body{
            background: url("view_order.jpg") no-repeat;
            background-size: cover;
            background-position: top;
            background-attachment: fixed;
        }
        h1 {
   text-align:center;
   padding: 50px;
   color: #eaeb8b;
   font-weight:bolder;
   text-decoration:underline;
   
}
#b1:hover{
    background-color: #e18b06;
}
table{
    font-family: sans-serif;
    font-weight:bolder;
    font-size: x-large ;
    color: #6a0303;
}
#frm{
    position: absolute;
    left:550px;
    
}
 </style>
    <body>
        <h1>:)  your orders! :)</h1>
 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "miniproject";
String userId = "root";
String password = "madhu";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

    
   <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM orders";

resultSet = statement.executeQuery(sql);


while(resultSet.next()){
%>
<table align="center"  > 
            <tr>
                <td>*</td>
                <td><%=resultSet.getString("itemname") %></td> 
                 <td><%=resultSet.getString("price") %>/-</td> 
            </tr>
            
</table>
            
             <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
<form method="get" action="deleteorder.jsp" id="frm" >
    <h3>ENTER USERID AGAIN<br/>BEFORE SUBMIT</h3><BR/><input type="text" name="userid" id="userid" placeholder="enter userid"/><br/>
    <input type="submit" name="order" value="SUBMIT ORDER" id="b1"/>
</form>
    </body>
</html>
