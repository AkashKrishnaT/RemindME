<%-- 
    Document   : newjsp
    Created on : 17 May, 2018, 1:49:28 AM
    Author     : AkAsH kRiZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String uname=(String) session.getAttribute("name");
if(uname==null) uname="";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile |   Remind ME </title>
        <link href="css/newcss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <br>
    <center><h1>Hello <%=uname%> !!!</h1></center> 
    <div class="logsize">
    <a href="index.jsp"> Logout</a>
    </div>
    <br>
    
    <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Create Remainder</button>

<div id="id01" class="modal">
  
    <form class="modal-content animate" action="createprocess.jsp" onsubmit="return validateform()" name="rem1" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <br>
         <h1 style="font-family:courier;"> Remind Me of ....... </h1>
    
    </div>
    <div class="container">
        
        
        Subject :<input type ="text" name ="subject" height="500" width="100" > 
        
        Date :<input type ="text" name ="date">
        
        Time : <input type="text" name="time">
      </div>
      <center> <button style="width:auto;"> OK </button> </center>


    
  </form>
</div>
    
    
    
     <button1 onclick="window.location='update.jsp';" style="width:auto; font-size: 80%">Update Remainder</button1>
   
   
     <button2 onclick="window.location='view.jsp';" style="width:auto; font-size: 80%"> View Remainder</button2>
    
    
  
    
    <script src="js/newjavascript.js" type="text/javascript"></script>
    </body>
</html>
