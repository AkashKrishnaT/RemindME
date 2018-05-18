package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class userprofile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Profile |   Remind ME </title>\n");
      out.write("        <link href=\"css/newcss.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <br>\n");
      out.write("    <center><h1>Hello User !!!</h1></center>\n");
      out.write("    \n");
      out.write("    <br>\n");
      out.write("    \n");
      out.write("    <button onclick=\"document.getElementById('id01').style.display='block'\" style=\"width:auto;\">Create Remainder</button>\n");
      out.write("\n");
      out.write("<div id=\"id01\" class=\"modal\">\n");
      out.write("  \n");
      out.write("    <form class=\"modal-content animate\" action=\"createprocess.jsp\" onsubmit=\"return validateform()\" name=\"rem1\" method=\"post\">\n");
      out.write("    <div class=\"imgcontainer\">\n");
      out.write("      <span onclick=\"document.getElementById('id01').style.display='none'\" class=\"close\" title=\"Close Modal\">&times;</span>\n");
      out.write("      <br>\n");
      out.write("         <h1 style=\"font-family:courier;\"> Remind Me of ....... </h1>\n");
      out.write("    \n");
      out.write("    </div>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        Subject :<input type =\"text\" name =\"subject\" height=\"500\" width=\"100\" > \n");
      out.write("        \n");
      out.write("        Date :<input type =\"text\" name =\"date\">\n");
      out.write("        \n");
      out.write("        Time : <input type=\"text\" name=\"time\">\n");
      out.write("      </div>\n");
      out.write("      <center> <button style=\"width:auto;\"> OK </button> </center>\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("     <button1 onclick=\"window.location='update.jsp';\" style=\"width:auto; font-size: 80%\">Update Remainder</button1>\n");
      out.write("   \n");
      out.write("   \n");
      out.write("     <button2 onclick=\"window.location='view.jsp';\" style=\"width:auto; font-size: 80%\"> View Remainder</button2>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("  \n");
      out.write("    \n");
      out.write("    <script src=\"js/newjavascript.js\" type=\"text/javascript\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
