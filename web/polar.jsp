<%-- 
    Document   : hari
    Created on : Nov 4, 2017, 8:30:18 PM
    Author     : Madhu M P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>polar bear menu</title>
    </head>
     <style>
         body {
   font-family: 'Handlee', cursive;
   font-size: 13pt;
   background-image:url("pbg.jpg");
/*   background-size:cover;*/
   background-repeat: no-repeat;
}
caption {
   text-align:center;
   padding: 10px;
   color: #c60b0b;
   font-weight:bolder;
}
table{
   position: absolute;
   left:5px;
   top:75px;
    width: 25%;
    text-align:left;
    color: mintcream;
}
table, th, td {
    border-collapse: collapse;
    text-decoration: underline;
   
}
.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

#main {
    transition: margin-left .5s;
    padding: 16px;
     background: azure;
     border-radius:50px;
    position: fixed;
    color: red;
}
a:hover, a:active {
    background-color: red;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
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
          <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="foodhome.jsp">Home</a>
  <a href="view_order.jsp">Your orders</a>
  <a href="feedback.jsp">FeedBack</a>
  <a href="index.jsp">LogOut</a>
</div>

<div id="main">

  <span style="font-size:30px;cursor:pointer; " onclick="openNav()">&#9776; </span>
</div>
        
        <table align="center" cellpadding="2" cellspacing="2" style="border-collapse: collapse;">
            <caption style=" font-weight: bolder;">Polar Bear Menu</caption>
            <tr style="background-color : #c87108;">
                <td><b>slno</b></td>
                <td><b>itemnames</b></td>
                <td><b>price</b></td>
            </tr>
            
            <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM polar";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>


<tr style="color: #c87108;">
                <td><%=resultSet.getString("itemid") %></td>
                <td><%=resultSet.getString("itemnames") %></td>
                <td><%=resultSet.getString("price") %> </td>
                <td><a href="polarorder.jsp?order=<%=resultSet.getString("itemnames")%>&&price=<%=resultSet.getString("price")%>" >Order</a></td>
            </tr>
            
            
            
             <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
       
        
        </table>
   <script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
}
</script>
    </body>
         <footer  style="position: absolute;bottom:1px;left: 550px;color:white;">&copy; Copyright2018MadhuMPandurangi</footer>

</html>
