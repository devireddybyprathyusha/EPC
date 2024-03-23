

<%@page import="java.sql.*"%>
<%@ include file="makecon.jsp" %>
<BODY   bgColor='#f3f6f4'>
<%
         try 
        {
      String vall="";
      String title="List of Tickets";


       out.println("<div style='position:absolute;left:650;top:10;'><p style='font-size:20px;font-family:tahoma;font-weight:bold;padding:5px;text-align:center;background:linen;color:maroon'>"+vall+" " + title +"</p><br><br><br></div>");
	
       String ds;
         int iv;

         String data="Select * from ticket where status = '" + request.getParameter("status") + "'";
        
		  PreparedStatement pst=null;
		  ResultSet rs=null;
		  ResultSetMetaData meta=null;

          rs=(st!=null)?st.executeQuery(data):null;
 		  meta=(rs!=null)?rs.getMetaData():null;
		  int ct=0;
		  out.println("<BODY   bgColor='#f3f6f4' leftMargin=0 topMargin=0 rightMargin=0 bgColor= #bbe9ff><br><br><br><style>");
		  out.println("td {font-family:ms sans serif;color:gray;font-size:18px:align=center;}");
		  out.println("th{font-family:ms sans serif;background:lightslategray;color:aliceblue;font-size:18px;}");
		  out.println("body {background-image:Bg.gif}");
		  out.println("</style>");
          out.println("<br><br><br><table style='position:absolute;left:280;top:80;' width=950 border=0 bgcolor=#bbe9ff cellspacing=1 cellpadding=1");
          if(rs!=null) {out.println("<TR>");  
          for(int mt=1;mt<=meta.getColumnCount();mt+=1) 
          out.println("<Th wrap>&nbsp;&nbsp;"+meta.getColumnName(mt).replace('_','-')+"&nbsp;&nbsp;</th>");
		  out.println("</TR>");} 
		  while(rs!=null && rs.next()) {
          ct++;out.println("<TR>");
		  for(int d=1;d<=meta.getColumnCount();d++) {
          String metaname=meta.getColumnTypeName(d).toLowerCase();
		  if(metaname.indexOf("varchar")!=-1) {
          ds=rs.getString(d);
          out.println("<td wrap bgcolor=white>&nbsp;&nbsp;&nbsp;"+ds+"&nbsp;</td>");}
		  else if(metaname.indexOf("date")!=-1) {
          ds=rs.getDate(d).toString();
          out.println("<td wrap bgcolor=white>&nbsp;&nbsp;&nbsp;"+ds+"&nbsp;</td>");}
		  else {
          iv=rs.getInt(d);
          out.println("<td wrap bgcolor=white>&nbsp;&nbsp;&nbsp;"+iv+"&nbsp;</td>");}
  		  }  out.println("</tr>");
  	      } 
out.println("<tr><td align=center colspan=15 bgcolor=whitesmoke><h2><a href=\"javascript:window.print()\"><font face=arial color=gray>Print The Reports</font></a></h2></center><br><hr size=1 color=gray><BR></td></table><br>");

          } 
catch (Exception e) 
{ out.println("<h1>Error Occured<BR>"+e);  }
 



%>