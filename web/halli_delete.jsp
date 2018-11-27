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

contact_form label {
    width:150px;
    margin-top: 3px;
    display:inline-block;
    float:left;
    padding:3px;
}
.contact_form input {
    height:5px; 
    width:100px; 
    padding:5px 8px;
}
.contact_form textarea {padding:8px; width:300px;}
.contact_form button {margin-left:156px;}

.contact_form input, .contact_form textarea { 
    border:1px solid #aaa;
    box-shadow: 0px 0px 3px #ccc, 0 10px 15px #eee inset;
    border-radius:2px;
}
.contact_form input:focus, .contact_form textarea:focus {
    background: #fff; 
    border:1px solid #555; 
    box-shadow: 0 0 3px #aaa; 
}
/* Button Style */
button.submit {
    background-color: #68b12f;
    color: white;
    font-weight: bold;
    padding: 6px 20px;
    text-align: center;
    position: 
         absolute;
    right:2px;
  
}
button.submit:hover {
    opacity:.85;
    cursor: pointer; 
}
.contact_form{
    position:absolute;
    right:3px;
    top:200px;
}

</style>
<script>
        function validate()
  {  
      if(document.getElementById("id").value =="")
     {
	alert("please enter id!");
        document.getElementById("id").focus();
	return false;
     }
    if(document.getElementById("name").value =="")
     {
	alert("please enter itemname!");
        document.getElementById("name").focus();
	return false;
     }
      if(document.getElementById("price").value =="")
     {
	alert("please enter price!");
        document.getElementById("price").focus();
	return false;
     }
 }
        </script>

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
                <td><a href="halli_delete1.jsp?itemnames=<%=resultSet.getString("itemnames")%>" >delete</a></td>
                        
            </tr>
            

            
             <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

        
        </table>
 <form action="admin1.jsp">
<input type="submit" value="back to home page"  style="position: absolute;right: 2px;top:2px"/>
</form>

     <form class="contact_form" onsubmit="return(validate());" action="insert.jsp" method="post" name="insert">
               <ul>
                 ADD ITEM
                  <li>
                     <input type="text" name="id" id="id" placeholder="Id" />
                   </li>
                 <li>
                     <input type="text" name="name" id="name" placeholder="Itemname" />
                   </li>
                   <li>
                        <input type="text" name="price" id="price" placeholder="price"/>
                    </li>
                        
                     <button class="submit" type="submit">ADD</button>
                                    
                </ul>
        </form>
     <footer  style="position: absolute;bottom:1px;left: 550px;color:white;">&copy; Copyright2018MadhuMPandurangi</footer>

</html>
