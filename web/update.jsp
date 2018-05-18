<%-- 
    Document   : update
    Created on : 17 May, 2018, 9:07:44 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update | Remind Me</title>
        
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
            <tr>
                <th>ID</th>
                <th>Subject</th>
                <th>Date</th>
                <th>Time</th>
                <th>Perform </th>
               
            </tr>
            <% while(rs.next()){ %>
            <tr>
                <td> <%= rs.getString(1) %></td>
                <td> <%= rs.getString(2) %></td>
                <td> <%= rs.getString(3) %></td>
                <td> <%= rs.getString(4) %></td>
                <td><button onclick= "window.location='updateprocess.jsp?id=<%=rs.getString("id")%>';">Update</button></td>
                
            </tr>
            <% } %>
        </table>

        <a href="userprofile.jsp"> <h3> Back to Profile</h3></a>
 </center>

    
   
    </body>
</html>
