<%-- 
    Document   : foodhome
    Created on : Oct 30, 2017, 11:10:42 AM
    Author     : Madhu M P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>food ordering page</title>
    </head>
    <style>
   body {
   font-family: 'Handlee', cursive;
   font-size: 13pt;
   padding: 10px;
   margin: 0;
   background-image:url("bgi.jpg") ;
    background-repeat: no-repeat;
    background-size: cover;
    background-attachment: fixed;
}
h1 {
    background: #333333;
    border-radius:50px;
   text-align:center;
   padding: 10px;
   color: antiquewhite;
   font-weight:bolder;
   opacity: .6;
}

table{
    border-collapse: collapse;
     border-spacing: 5px;
    border-image: url("food.jpg");
    width: 60%;
    float: right;
    text-align:center;
    color: blanchedalmond;
    background-color: transparent;
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

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

  
</style>
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
        
        <table>
            <caption><h1>WELCOME TO FOOD WORLD</h1></caption>
            <tr>
                 <td>
                 <a href="dvdosa.jsp">
                     <img src="dvbdosa.jpg" alt="bennedosa" width="300" height="200" title="DAVANAGERE BENNE DOSA">
            </a>
                <div><p>DAVANAGERE BENNE DOSA</p></div>
            </td>
                
            <td>
                 <a  href="mcd.jsp">
                     <img  src="mcd.jpg" alt="McD" width="300" height="200" title="McDonald's">
            </a>
                <div><p>McDonald's</p></div>
            </td>
           
            </tr>
            
            <tr>
                <td><a  href="polar.jsp">
                         <img src="pb.jpg" alt="hallitindi" width="300" height="200" title="POLAR BEAR">
            </a>
                <div><p>POLAR BEAR</p></div>
                </td>
                
                <td><a href="hari.jsp">
                        <img src="hari.jpg" alt="hallitindi" width="300" height="200" title="HARI SUPER SANDWITCH">
            </a>
                <div><p>HARI SUPER SANDWITCH</p></div>
                </td>
            </tr>
            
            <tr>
                 
                
                <td><a href="hallithindi.jsp">
                        <img src="hallitindi.jpg" alt="hallitindi" width="300" height="200" title="Halli Tindi">
            </a>
                <div><p>Halli Tindi</p></div>
                </td>
            </tr>
            
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

</html>
