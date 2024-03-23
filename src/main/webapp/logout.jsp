<script language="Javascript">
	{
		window.history.forward(1);
	}
</script>

<head>
<meta http-equiv="expires" content="now">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
</style>
</head>

<BODY bgColor='#f2f2f2'>

	<% 
    response.setHeader("Cache-Control","no-cache");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader ("Expires", -1);

%>



	<% 
session.removeAttribute("login");
out.println("<br><br><br><br><br><center>  Logout Complete <br> <a  target=_parent href=welcome.jsp > Home Page </a>");
%>