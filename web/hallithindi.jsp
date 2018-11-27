<%-- 
    Document   : hallithindi
    Created on : Nov 4, 2017, 4:55:52 PM
    Author     : Madhu M P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>hallithindi menu</title>
    </head>
    <style>
         body {
   font-family: 'Handlee', cursive;
   font-size: 13pt;
   font-color:red;
   background-image:url("hallibg1.jpg");
   background-size:cover;
   background-repeat: no-repea;
}
h1 {
   text-align:center;
   padding: 15px;
   color: #a45614;
   font-weight:bolder;
}
table{
   position: absolute;
   left:450px;
   top:100px;
     /*border-spacing: 5px;*/
    width:40%;
    text-align:left;
    padding-bottom:20px;
    color: floralwhite;
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
a:hover, a:active {
    background-color: red;
}
#main {
    transition: margin-left .5s;
    padding: 16px;
     background: azure;
     border-radius:50px;
    position: fixed;
    color: red;
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
        
        
        <h1>HalliThindi MENU</h1>
        <table align="center" cellpadding="2" cellspacing="2" style="border-collapse: collapse;">
            <!--<caption>Burgers/Wraps</caption>-->
            <tr style="background-color: #f2aa07;">
                <td><b>slno</b></td>
                <td><b>itemnames </b></td>
                <td><b>price   </b></td>
            </tr>
            
            <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="call disp_ht()";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>


<tr style="color: #333333;">

                <td><%=resultSet.getString("itemid") %></td>
                <td><%=resultSet.getString("itemnames") %><td>
                <td><%=resultSet.getString("price") %></td>
                <td><a href="htorder.jsp?order=<%=resultSet.getString("itemnames")%>&&price=<%=resultSet.getString("price")%>" >Order</a></td>
                        
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
