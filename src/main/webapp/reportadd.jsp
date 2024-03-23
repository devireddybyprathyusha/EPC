<%@ page import="java.sql.*" %>
<html>
<script language="JavaScript">
function formvalid()
{
var physicianid=document.docinfor.physicianid.value;
var name=document.docinfor.name.value;
var qualification=document.docinfor.qualification.value;
var specialist=document.docinfor.specialist.value;
var address=document.docinfor.address.value;
var workinghours=document.docinfor.workinghours.value;


if((physicianid.length==0) || (name.length==0) || (qualification.length==0) || (address.length==0) || (workinghours.length==0)) 
{
alert('fill the form completely')
return false;
}
return true;
}

</script>
<style>
option.a{
background: blue;
}
.td{
color:blue;
}
h2{
color:#cc0000;
}
</style>
</head>

<body bgColor='#f3f6f4' onload="document.docinfor.physicianid.focus()">

<fieldset>
<form name=docinfor action=docinforins.jsp  onSubmit='return formvalid()'>
<center><h2> Reports Entry 
<hr>

<table  align =center  border=0>
<tr><td class=td><b>Ticket Id</b></td><td>
<input name=physicianid type=text  size=20  ></td></tr>
<tr><td class=td><b> Name</b></td><td>
<input name=name type=text  size=40  ></td></tr>
<tr><td class=td><b>Ticket Info</b></td><td>
<input name=tinfo type=text  size=20  ></td></tr>
<tr><td class=td><b>Date of Ticket</b></td><td>
<input name=qualification type=text  size=40  ></td></tr>
<tr><td class=td><b>Date of Start</b></td><td>
<input name=address type=text  size=40  ></td></tr>
<tr><td class=td><b>Date of End</b></td><td>
<input name=workinghours type=text  size=20  ></td></tr>
<tr><td class=td><b>Assigned To</b></td><td>
<input name=internethours type=text  size=40  ></td></tr>
<tr><td class=td><b>Status</b></td><td>
<select name=specialist ><option class="a" color="yellow">Pending</option> <option class="b" color="green"> Completed </option> <option class="c" color="red"> Cancelled </select></td></tr>
</table>
<hr>
<input type="submit" value=Submit> 
<input type="reset" vlaue=reset> </td></tr>             
</form></table><br><br>
</body>
</html>
