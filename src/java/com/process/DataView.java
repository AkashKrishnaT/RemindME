/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.process;

import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AkAsH kRiZ
 */
public class DataView extends HttpServlet {

    private ServletConfig config;

  //Setting JSP page

  String page="view.jsp";



  public void init(ServletConfig config)

  throws ServletException{

 this.config=config;

 }

  public void doGet(HttpServletRequest request, HttpServletResponse response)

    throws ServletException,IOException
{

    PrintWriter out = response.getWriter();

  //Establish connection to MySQL database

String connectionURL = "jdbc:mysql://localhost/remind";
Connection connection = null;

  ResultSet rs;

  response.setContentType("text/html");

  List dataList = new ArrayList(); 

  try {

 // Load the database driver

  Class.forName("com.mysql.jdbc.Driver");

  // Get a Connection to the database

  connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/remindme","root"," "); 

  //Select the data from the database

  String sql = "select * from reminder_main";

  Statement s = connection.createStatement();

  s.executeQuery (sql);

  rs = s.getResultSet();

  while (rs.next ()){

  //Add records into data list

  dataList.add(rs.getInt("id"));

  dataList.add(rs.getString("subject"));
  
   dataList.add(rs.getString("date"));
   
    dataList.add(rs.getString("time"));

  }

  rs.close ();

  s.close ();

  }catch(Exception e){

  System.out.println("Exception is ;"+e);

  }

  request.setAttribute("data",dataList);

  //Disptching request

  RequestDispatcher dispatcher = request.getRequestDispatcher(page);

  if (dispatcher != null){

  dispatcher.forward(request, response);

  } 

  }

}
   