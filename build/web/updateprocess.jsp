

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "remindme";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from reminder_main where id="+id;
rs = statement.executeQuery(sql);
while(rs.next()){
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Update  | Remind Me</title>
        <link href="css/update.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
    <center>
  <form method="post" action="updatefinal.jsp">
   <input type="hidden" name="id" value="<%=rs.getString("id") %>">     
  <div class="container">
    <h1>Update Your Reminder</h1>
    
     <label for="email"><b>Subject</b></label>
    <input type="text"  name="subject" value="<%= rs.getString("subject") %>"required>

    <label for="psw"><b>Date</b></label>
    <input type="text" name="date" value="<%=rs.getString("date") %>" required>

    <label for="psw-repeat"><b> Time</b></label>
    <input type="text" name="time" value="<%=rs.getString("time") %>" required>
     

    <button type="submit" class="registerbtn">Update</button>
  </div>
  
  </form>
 </center>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
    </body>
</html>
