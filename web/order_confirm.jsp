<%-- 
    Document   : order_confirm
    Created on : Nov 11, 2017, 11:24:57 PM
    Author     : madhumpandurangi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>confirm page</title>
         <link rel="stylesheet" type="text/css" href="fb.css">
    </head>
    <style>
        body{
            background: url("order_confirm.jpg") no-repeat;
            background-attachment: fixed;
            background-position: center;
        }
    </style>
    <body>
        <form action="foodhome.jsp">
      <div class="submit" style="position: absolute;top: 500px;left:150px">
        <input type="submit" value="CLICK TO GO BACK TO HOME PAGE" id="button-blue"/>
        <div class="ease"></div>
      </div>
    </form>
         <form action="feedback.jsp">
      <div class="submit" style="position: absolute;top: 500px;left:650px">
        <input type="submit" value=" CLICK HERE TO GIVE FEEDBACK  " id="button-blue"/>
        <div class="ease"></div>
      </div>
    </form>
    </body>
</html>
