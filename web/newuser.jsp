 <%-- 
    Document   : newuser
    Created on : Oct 27, 2017, 5:24:28 PM
    Author     : Madhu M P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><html lang="en"><head>  
<meta charset="utf-8">  
<title>new user registration form</title>  

<script>
    
     function validate()
  {   
    if(document.getElementById("userid").value =="")
     {
	alert("please enter userid!");
        document.getElementById("userid").focus();
	return false;
     }
     
     if(document.getElementById("passid").value =="")
     {
	alert("please enter password!");
        document.getElementById("passid").focus();
	return false;
     }
     
          
     if(document.getElementById("uname").value =="")
     {
	alert("please enter user name!");
        document.getElementById("uname").focus();
	return false;
     }
     
     if(document.getElementById("address").value =="")
     {
	alert("please enter address!");
        document.getElementById("address").focus();
	return false;
     }
     
     if(document.getElementById("email").value =="")
     {
	alert("please enter email!");
        document.getElementById("email").focus();
	return false;
     }
     
      if(document.getElementById("phno").value =="")
     {
	alert("please enter phone number!");
        document.getElementById("phno").focus();
	return false;
     }
     
  }
  
  
</script> 
<style>
   body {
   font-family: 'Handlee', cursive;
   font-size: 13pt;
   font-color:black;
   padding: 10px;
   margin: 0;
   background-image:url("reg.jpg");
   background-repeat:no-repeat;
   background-size: cover;
   
}
form{
    position: absolute;
    left: 450px;
    top:200px;
}
h1 {
   text-align:center;
   padding: 10px;
   color:black;
   font-weight:bolder;
}
label {
    color:black;
}
</style>
</head>  
<body onload="document.registration.userid.focus();">  
<h1><marquee direction="right" behavior="alternate">
    New User Registration Form
</marquee></h1>  
 
<form name='registration' onsubmit="return(validate());" method="get" action="reg1.jsp">  
    <table>
        <tr>
            <td>
                <label for="userid">User id:</label>  
            </td>
            <td>
                <input type="text" name="userid" size="12" id="userid" />
            </td>
        </tr>
        
        <tr>
            <td>
                <label for="passid">Password:</label>
            </td>
            <td>
                <input type="password" name="passid" size="12" id="passid" /><br/> 
            </td>
        </tr>
        
        <tr>
            <td>
                 <label for="username">Name:</label>
            </td>
            <td>
                <input type="text" name="uname" size="50" id="uname" />
            </td>
        </tr>
        
        <tr>
            <td>
                <label for="address">Address:</label>
            </td>
            <td>
                <input type="text" name="address" size="50" id="address" />
            </td>
        </tr>
        
        <tr>
            <td>
                 <label for="email">Email:</label>
            </td>
            <td>
                <input type="text" name="email" size="50" id="email" />
            </td>
        </tr>
        
        <tr>
            <td>
                 <label for="phno">Phone Number:</label>
            </td>
            <td>
                <input type="text" name="phno" size="10" id="phno" /><br/>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="submit"/> 
            </td>
            <td>
                <input type="reset" value="clear"/> 
            </td>
        </tr>
    </table>
    
</form>  
</body>  
</html> 