<%-- 
    Document   : index
    Created on : 17 May, 2018, 1:32:52 AM
    Author     : AkAsH kRiZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title> RemindME | HomePage</title>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
       <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    </head>
    <body style="background-color:#7df15e">
        
        <div id ="maintag">
            <h1 style="font-family:courier;"> Remind Me ! </h1> </div>
    <div id ="tagline">
     <h1 style="font-family:courier; font-size:150%">Tired of Remembering Something ? We can help you ! </h1> 

    </div>
   
  <div class="login-page">
  <div class="form">
      <form action="registration.jsp" method="post" class="register-form">
      <input type="text" placeholder="name"  name ="name"/>
      <input type="password" name = "password" placeholder="password"  />
      <input type="text" placeholder="email address" name="emailid"/>
      <button type="submit" value="create">create</button>
      <p class="message">Already registered? <a href="#">Sign In</a></p>
      </form> 
       
    <form class="login-form" action ="login.jsp" method="post">
      <input type="text" name= "name" placeholder="username"/>
      <input type="password" name="password" placeholder="password"/>
      <button type="submit">login</button>
      <p class="message">Not registered Yet ? <a href="#"> Join Us</a></p>
    </form>
  </div>
</div>
        <script src="js/newjavascript.js" type="text/javascript"></script>
    
    </body>
    
    
</html>
