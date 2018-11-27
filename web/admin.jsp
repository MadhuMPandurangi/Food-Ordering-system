<%-- 
    Document   : homepage
    Created on : Oct 13, 2017, 7:18:22 AM
    Author     : Madhu M P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script>
        function validate()
  {   
    if(document.getElementById("userid").value =="")
     {
	alert("please provide admin name!");
        document.getElementById("uname").focus();
	return false;
     }
  }
  
   function validate()
  {   
    if(document.getElementById("pwd").value =="")
     {
	alert("please enter password!");
        document.getElementById("pwd").focus();
	return false;
     }
  }
  
 
    </script>
     <style>
 body {
   font-family: 'Handlee', cursive;
   font-size: 13pt;
   font-color:red;
   padding: 10px;
   margin: 0;
   background-image:url("food1.jpg");
   background-repeat: no-repeat;
    background-size:cover; 
}
h1 {
   text-align:center;
   padding: 10px;
   color: #1e2219;
   font-weight:bolder;
}
label {
    color:green;
}

table {
     position: absolute;
    left: 550px;
    top:200px;
    background-color: transparent;
  }
  marquee{
      color: #e18b06;
      
  }
  .center{
      position:absolute;
      left: 600px;
      top: 200px;
  }
  
  #b1{
       width: 60px;
  height:20px;
  background-color: #3498db;
  }
  #b1:hover{
      background-color: white;
  }
</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FOOD ORDERING SYSTEM</title>
    </head>
    <body>
        <h1 >FOOD ORDERING SYSTEM</h1>
        
        <h2>
	<marquee direction="right" behavior="alternate">ADMIN LOGIN</marquee>
         </h2>
        
        <div class="center" style="margin: 10px auto">
         <form method="get" action="adminvalidate.jsp">
             <input type="text" name="userid"  placeholder="enter userid" "/><br/>
             <input type="password" name="pwd" placeholder="enter password" "/><br/>
             <input type="submit" value="submit"id="b1"/>
         </form>
           
            <form method="get" action="index.jsp">
                <input type="submit" value="back to login page"id="b1" style="width: 120px;"/>
         </form>
        </div>
    </body>
    
        <footer  style="position: absolute;bottom:1px;left: 550px;color: #ffd103;">&copy; Copyright2018MadhuMPandurangi</footer>

</html>



            
               
           