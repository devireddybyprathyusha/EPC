<%@ page import="java.sql.*" %>
<%@ include file="makecon.jsp" %>

<html>

<body bgColor='#f3f6f4' >

<fieldset>
<form name=docinfor action=reportedit2.jsp  >
<center><h2> Reports Entry 
<hr>

<%
String physicianid=request.getParameter("physicianid");

Statement st = con.createStatement();
String cmd ="select * from ticket where ticketid=" + physicianid;
ResultSet rs = st.executeQuery(cmd);

if(rs.next())
{
%>
<body bgColor='papayawhip' >
<table  align =center  border=0>
<tr><td class=td><b>Ticket Id</b></td><td>
<input name=physicianid type=text  size=20 value= <%=rs.getString(1)%>  ></td></tr>
<tr><td class=td><b> Name</b></td><td>
<input name=name type=text  size=40  value= <%=rs.getString(2)%>  ></td></tr>
<tr><td class=td><b>Ticket Info</b></td><td>
<input name=tinfo type=text  size=20   value= <%=rs.getString(3)%>  ></td></tr>
<tr><td class=td><b>Date of Ticket</b></td><td>
<input name=qualification type=text  size=40  value= <%=rs.getString(4)%>  ></td></tr>
<tr><td class=td><b>Date of Start</b></td><td>
<input name=address type=text  size=40  value= <%=rs.getString(5)%>  ></td></tr>
<tr><td class=td><b>Date of End</b></td><td>
<input name=workinghours type=text  size=20 value= <%=rs.getString(6)%>    ></td></tr>
<tr><td class=td><b>Assigned To</b></td><td>
<input name=internethours type=text  size=40  value= <%=rs.getString(6)%>  ></td></tr>
<tr><td class=td><b>Status</b></td><td>
<select name=specialist ><option>Completed</option> <option> Pending </option> <option> Cancelled </select></td></tr>
</table>
<hr>
<input type="submit" value=Submit> 
<input type="reset" vlaue=reset> </td></tr>             
<%}
else{
   out.println(" Not Found");}
%>
</form></table><br><br>
</body>
</html>
