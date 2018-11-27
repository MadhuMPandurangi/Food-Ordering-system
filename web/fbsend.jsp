<%-- 
    Document   : reg1
    Created on : Oct 29, 2017, 12:16:43 PM
    Author     : Madhu M P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>feedback</title>
        <link rel="stylesheet" type="text/css" href="fb.css">
    </head>
    <style>
        body{
            background: url("fb.jpg") no-repeat;
            background-attachment: fixed;
            background-position: center;
        }
    </style>
    <%@page import ="java.sql.*" %>
        <%@page import ="javax.sql.*" %>
        <%
            String userid=request.getParameter("userid");
            String email=request.getParameter("email");
            String comment=request.getParameter("comment");
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","madhu");
            Statement st=con.createStatement();
            st.executeUpdate("insert into feedback values('"+userid+"','"+email+"','"+comment+"')");
            String Query="select * from feedback";
            PreparedStatement psm=con.prepareStatement(Query);
            ResultSet rs=psm.executeQuery();
           if(rs.next())
           {
               //out.println("thank you for giving feedback");
               ;
//               response.sendRedirect("/homepage.jsp");
           }
           else
           {
               out.println("error in submitting feedbeck");
           }
        %>
    <body>
        <form action="index.jsp">
      <div class="submit" style="position: absolute;top: 500px;left:450px">
        <input type="submit" value="CLICK TO GO BACK TO LOGIN PAGE" id="button-blue"/>
        <div class="ease"></div>
      </div>
    </form>
    </body>
</html>
