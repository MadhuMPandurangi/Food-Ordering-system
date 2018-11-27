<head>
    <link rel="stylesheet" type="text/css" href="fb.css">
</head>
<script>
    
    
     function vali()
  {   
    if(document.getElementById("name").value =="")
     {
	alert("please enter userid!");
        document.getElementById("name").focus();
	return false;
     }
     
     if(document.getElementById("email").value =="")
     {
	alert("please enter email!");
        document.getElementById("email").focus();
	return false;
     }
     
     if(document.getElementById("comment").value =="")
     {
	alert("please enter comment!");
        document.getElementById("comment").focus();
	return false;
     }
 } 
</script>

<style>
   body{ background:url(fbbg.jpg) no-repeat;background-size: cover;}
</style>

<body>
<div id="form-main">
  <div id="form-div">
      <form class="form" onsubmit="return(vali());" id="form1" method="get" action="fbsend.jsp">
      
      <p class="name">
        <input type="text" name="userid" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input"  placeholder="Name" id="name" />
      </p>
      
      <p class="email">
        <input name="email" type="text" class="validate[required,custom[email]] feedback-input" id="email"  placeholder="Email" />
      </p>
      
      <p class="text">
        <textarea name="comment" class="validate[required,length[6,300]] feedback-input" id="comment" placeholder="Comment"></textarea>
      </p>
      
      
      <div class="submit">
        <input type="submit" value="SEND" id="button-blue"/>
        <div class="ease"></div>
      </div>
        
    </form>
  </div>
</div>
</body>
<footer  style="position: absolute;bottom:1px;left: 550px;color:white;">&copy; Copyright2018MadhuMPandurangi</footer>
