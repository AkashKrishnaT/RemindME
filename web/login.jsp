<%-- 
    Document   : login
    Created on : 17 May, 2018, 2:26:51 AM
    Author     : AkAsH kRiZ
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

       <%
    String uname = request.getParameter("name"); 
    if(uname==null) uname="";

     session.setAttribute("name",uname);
    String upass = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/remindme", "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from user_details where name='" + uname + "' and password='" + upass + "'");
    if (rs.next()) {
        session.setAttribute("userid", uname);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("userprofile.jsp");
    } else {
        
        response.sendRedirect("error.jsp");
    }
%>
   