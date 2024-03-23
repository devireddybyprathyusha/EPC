<LINK href="online_files/main.css" type=text/css rel=stylesheet>
<%@ include file="makecon.jsp" %>
<%@ page import="java.sql.*"%>
<%
String physicianid=request.getParameter("physicianid");
String name=request.getParameter("name");
String qualification=request.getParameter("qualification");
String address=request.getParameter("address");
String workinghours=request.getParameter("workinghours");
String internethours=request.getParameter("internethours");
String specialist=request.getParameter("specialist");
String tinfo=request.getParameter("tinfo");

try{
PreparedStatement sst=null,sst1=null;
ResultSet rs=null;


Statement st = con.createStatement();
String cmd1 ="delete from ticket where ticketid=" + physicianid;
st.executeUpdate(cmd1);

String cmd ="insert into ticket values (?,?,?,?,?,?,?,?)";



sst=con.prepareStatement(cmd);

sst.setString(1,physicianid);
sst.setString(2,name);
sst.setString(3,qualification);
sst.setString(4,address);
sst.setString(5,workinghours);
sst.setString(6,internethours);
sst.setString(7,specialist);
sst.setString(8,tinfo);

int eff=sst.executeUpdate();

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
