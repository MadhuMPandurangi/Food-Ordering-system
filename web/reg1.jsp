
<!--    Document   : reg1
    Created on : Oct 29, 2017, 12:16:43 PM
    Author     : Madhu M P-->

<head>
    <link rel="stylesheet" type="text/css" href="fb.css">
    
</head>
<style>
    body{
        background: url("reg2.png") no-repeat;
       background-position: center;
    }
</style>
<%@page import ="java.sql.*" %>
        <%@page import ="javax.sql.*" %>
        <%
            String userid=request.getParameter("userid");
            String password=request.getParameter("passid");
            String uname=request.getParameter("uname");
            String address=request.getParameter("address");
            String email=request.getParameter("email");
            String phno=request.getParameter("phno");
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","root");
            Statement st=con.createStatement();
            st.executeUpdate("insert into users values('"+userid+"','"+password+"','"+uname+"','"+address+"','"+email+"','"+phno+"')");
            String Query="select * from users";
            PreparedStatement psm=con.prepareStatement(Query);
            ResultSet rs=psm.executeQuery();%>
           
<%if(rs.next())
           {
               ;
           }
           else
           {
               out.println("error in registration");
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