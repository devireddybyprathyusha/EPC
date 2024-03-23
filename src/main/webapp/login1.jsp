<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>


<% 
   String uid=request.getParameter("uid");
   String pwd=request.getParameter("pwd");
   session.putValue("blogin",uid);

session.putValue("uid",uid);

if(uid.equals("admin") && pwd.equals("admin"))
{%>
    <jsp:forward page="index.jsp"/>
   <% 
}
else
  {
	out.println(" <body background=bak.JPG> <center>Login Failed <br><br><a href=welcome.jsp> Login </login>");
   } %> 
  
