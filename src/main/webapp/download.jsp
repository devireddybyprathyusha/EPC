<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Download the file here</title>
<style type="text/css">
h1{
padding-left:500px;
color: skyblue;
text-align:centre;
}
.a{
padding-left:560px;
}
.b{
padding-top:15px;
padding-left:454px;
}
A.orangefont:hover {
	COLOR: #1f3984; TEXT-DECORATION: none
}


</style>
</head>
<body style="background-color: black;">
<div class="download">
<h1><span>Files</span> Download from the Database </h1>
<form method="get" action="FileDownload" >
<div class="a">
                 <tr>
                    <td><input type="text" name="id" placeholder="S.No" size="10" style="background-color: yellow;"/></td><br>
                    <td><input type="text" name="profile" placeholder="Document Name" color="blue" size="15" style="background-color: yellow;"/></td><br>
                </tr>
                </div>
<div class="b">
                 <tr> 
                    <td>
                        <input type="submit" value="Download" size="10" style="background-color: yellow;" >
                    </td>
                </tr>
</div>
</div>


</body>
</html>