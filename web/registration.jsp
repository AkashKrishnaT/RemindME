<%-- 
    Document   : registration
    Created on : 17 May, 2018, 2:35:35 AM
    Author     : AkAsH kRiZ
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
            String uname = request.getParameter("name");
            String upass = request.getParameter("password");
            String uemail = request.getParameter("emailid");
            
             Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/remindme","root","");
            Statement st = con.createStatement();
            
            int i = st.executeUpdate("insert into user_details(name, password, emailid) values ('" + uname + "','" + upass + "','" + uemail + "')");
        
             if (i > 0) {
 
        response.sendRedirect("index.jsp");
       // 
    } else {
        out.print(" Please Try Again ! "+"<a href='index.jsp'>Go to Home</a>");
    }
	
    %>