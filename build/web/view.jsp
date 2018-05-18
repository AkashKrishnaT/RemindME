<%-- 
    Document   : view
    Created on : 17 May, 2018, 7:19:11 PM
    Author     : AkAsH kRiZ
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> View   | Remind Me</title>
</head>
<body> 
    <br>
    <br>

    <% 
        
  Class.forName("com.mysql.jdbc.Driver");
 Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/remindme","root","");

 Statement statement = connection.createStatement() ;
            ResultSet rs = statement.executeQuery("select * from reminder_main") ; 
        %>
<center>
    
        <table border="10" cellpadding="10">
            <TR>
                <TH>ID</TH>
                <TH>Subject</TH>
                <TH>Date</TH>
                <TH>Time</TH>
               
            </TR>
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString(1) %></td>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
                <TD> <%= rs.getString(4) %></TD>
               
            </TR>
            <% } %>
        </table>

 </center>

<br>

<center>
    <a href="userprofile.jsp"> <h3> Back to Profile</h3></a>
</center>
</body>
</html>