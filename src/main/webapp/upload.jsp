<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload to Database Demo</title>
<style>

input{
color:blue;
}
td{
color:#cccc00;
}
h1{
font-size:;
color:#cc0000;
}


</style>
</head>
<body bgColor="#1a1a1a">
    <center>
        <h1>File Upload to Database </h1>
        <form method="post" action="UploadServlet" enctype="multipart/form-data">
            <table border="0">
 <tr>
                    <td>S.NO: </td>
                    <td><input type="text" name="id" placeholder="S.No" color="blue" size="50"/></td>
                </tr>
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="profile" placeholder="Document Name" color="blue" size="50"/></td>
                </tr>
                
                <tr>
                    <td>Document: </td>
                    <td><input type="file" name="fname" color="blue" size="50"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
        </form>
    </center>


</body>
</html>