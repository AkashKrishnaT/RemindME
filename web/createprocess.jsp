<%-- 
    Document   : createprocess
    Created on : 17 May, 2018, 4:39:11 PM
    Author     : AkAsH kRiZ
--%>




<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   
    String usub = request.getParameter("subject");
    String udate = request.getParameter("date");
    String utime = request.getParameter("time");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/remindme","root","");
    Statement st = con.createStatement();
    
            
            int i = st.executeUpdate("insert into reminder_main(subject, date, time) values ('" + usub + "','" + udate + "','" + utime + "')");
        
             if (i > 0) {
 
        response.sendRedirect("sucess.jsp");
       // 
    } else {
        out.print(" Please Try Again ! "+"<a href='index.jsp'>Go to Home</a>");
    }
    
    
    
    
    %>
