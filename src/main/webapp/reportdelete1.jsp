<LINK href="online_files/main.css" type=text/css rel=stylesheet>
<%@ include file="makecon.jsp" %>
<%@ page import="java.sql.*"%>
<%
String physicianid=request.getParameter("physicianid");

try{

Statement st = con.createStatement();
String cmd ="delete from ticket where ticketid=" + physicianid;

int eff=st.executeUpdate(cmd);

if(eff>0)
{%>
<body bgColor='papayawhip' >
  <br>  <br>  <br>  <br>
  <center>
  <h3>Your  Entry Succeeded</h3>
  <br><br><center>


<%}
else
{%>
<body bgColor='papayawhip' >
  <br>  <br>  <br>  <br>
  <center>
  <h3>Your Entry Failed</h3>
  <br><br><center>

<%}
}
catch(Exception e)
{
%>
<body bgColor= #bbe9ff>
  <br>  <br>  <br>  <br>
  <center>
  <a href="javascript:history.back()"><img src="images\back.gif" 
border=0></a>&nbsp;&nbsp;
  <br>  <br>  <br>  <br>
<% 
 out.println(e.getMessage());
}
%>
