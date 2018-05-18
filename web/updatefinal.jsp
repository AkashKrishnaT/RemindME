<%-- 
    Document   : updatefinal
    Created on : 17 May, 2018, 10:41:18 PM
    Author     : AkAsH kRiZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/remindme";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String usub=request.getParameter("subject");
String udate=request.getParameter("date");
String utime=request.getParameter("time");

{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update reminder_main set id=?,subject=?,date=?,time=?  where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, usub);
ps.setString(3, udate);
ps.setString(4, utime);

int i = ps.executeUpdate();
if(i > 0)
{
    out.print("<br>");
out.print(" Reminder has been updated successfully !!!  "+"<a href='userprofile.jsp'>Go to Home</a>");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%> 
