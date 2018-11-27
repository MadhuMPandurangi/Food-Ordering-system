<%-- 
    Document   : newjsp
    Created on : Oct 30, 2017, 2:20:06 PM
    Author     : Madhu M P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
         body {
   font-family: 'Handlee', cursive;
   font-size: 13pt;
   font-color:red;
   background-image:url("admin.jpg");
   background-size:cover;
   background-repeat: no-repeat;
}
h1 {
   text-align:center;
   padding: 10px;
   color: #eaeb8b;
   font-weight:bolder;
}
table{
   position: absolute;
   left:260px;
   top:100px;
     /*border-spacing: 5px;*/
    width: 60%;
    text-align:left;
    color: floralwhite;
}

table, th, td {
    border-collapse: collapse;
    text-decoration: underline;
   
}

#b1{
       width:120px;
  height:20px;
  background-color: #3498db;
  }
  #b1:hover{
      background-color: white;
  }
  
  #button{
       width:180px;
  height:20px;
  background-color: #3498db;
  }
  #button:hover{
      background-color: white;
  }
    </style>
    
    
     <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "miniproject";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>



    <body>
        <h1>customers feedback</h1>
        <table align="center" cellpadding="5" cellspacing="5" border="0">
            
            <tr bgcolor="#A52A2A">
                <td><b>USERID</b></td>
                <td><b>EMAIL</b></td>
                <td><b>COMMENT</b></td>
            </tr>
            
            <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM feedback";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

            
            <tr>
                <td><%=resultSet.getString("userid") %></td>
                <td><%=resultSet.getString("email") %></td>
                <td><%=resultSet.getString("comment") %></td>
            </tr>
            
            
            
             <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
        </table>
        <div  style="position: absolute;right: 100px;top:170px;color: #eaeb8b;
   font-weight:bolder;">
            To delete list
        </div>
        <form action="index.jsp">
            <input type="submit" value="back to login page"  style="position: absolute;right: 100px;" id="b1"/>
</form>
        
        <form action="dbd_delete.jsp">
            <input type="submit" value="davanagere benne dosa"  style="position: absolute;right: 50px;top:200px;" id="button"/>
</form>
        
        <form action="mcd_delete.jsp">
            <input type="submit" value="mcd"  style="position: absolute;right: 50px;top:230px;" id="button"/>
</form>
        
        <form action="halli_delete.jsp">
            <input type="submit" value="hallithindi"  style="position: absolute;right: 50px;top:260px;" id="button"/>
</form>
        
        <form action="polar_delete.jsp">
            <input type="submit" value="polarbear"  style="position: absolute;right: 50px;top:290px;" id="button"/>
</form>
        
        <form action="hari_delete.jsp">
            <input type="submit" value="hari sandwich"  style="position: absolute;right: 50px;top:320px;" id="button"/>
</form>
    </body>
</html>
