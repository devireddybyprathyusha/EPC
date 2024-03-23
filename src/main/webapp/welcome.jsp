<html>
<head>
<title>Welcome</title>
<script>
function formvalid()
	{
		var staffid =document.comfrm.uid.value;
		var name=document.comfrm.pwd.value;


		if ((staffid.length==0)||(name.length==0))
		{
		alert("fill the form completely")
		return false;
		}
		return true;
	}
</script>
</head>

<body bgColor='white' >
<center>
<img src="Images\top.jpg" >
</center>

<br><br>
<font size=1 face=verdana>
<br>
</font>

<FORM  NAME=comfrm ACTION="login1.jsp" onSubmit="return formvalid()">
<font color="blue" size="15">
<center>

<table style="position:absolute;top:280;left:380;">
<caption><b> <img src=Images/but-login.gif></b>
<tr>
<td> <h4>User Id </td>
<td> <input type=text name=uid border=2></td>
</tr>

<tr>
<td><h4> Password </td>
<td> <input type=password name=pwd border=0></td>
</tr>
<tr>
<td colspan=2><center> <input type=submit value=submit></center>
</tr>
</table>
<br>
</body>
</form>













