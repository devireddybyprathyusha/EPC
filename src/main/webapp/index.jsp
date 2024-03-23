<!DOCTYPE html>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Report Development index</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">

        <style>
            * {
	margin: 0;
	padding: 0;
}
body {
	font-family: 'Poppins', sans-serif;
}
.wrapper {
	width: 1170px;
	margin: auto;
}
header {
	background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8));
	height: 100vh;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: center center;
	position: relative;
}
.menu {
	float: right;
	list-style: none;
	margin-top: 30px;
}
.menu li {
	display: inline-block;
}
.menu li a {
	color: #fff;
	text-decoration: none;
	padding: 5px 20px;
	font-family: 'Poppins', sans-serif;
	font-size: 16px;
	text-transform: uppercase;
}
.menu li a:hover {
	background: #fff;
	color: #333;
}

.banner-text {
	position: absolute;
	width: 600px;
	height: 300px;
	margin: 20% 30%;
	text-align: center;
}
.banner-text h1 {
	text-align: center;
	color: #fff;
	text-transform: uppercase;
	font-size: 60px;
}
        .banner-text p {
	font-family: 'Ubuntu', sans-serif;
	font-size: 16px;
	line-height: 1.5;
	color: #ddd;
}
.banner-text h1 span {
	color: darkorange;
}
.banner-text a {
	border: 1px solid #fff;
	padding: 10px 25px;
	text-decoration: none;
	text-transform: uppercase;
	font-size: 14px;
	margin-top: 20px;
	display: inline-block;
	color: #fff;
}
.banner-text a:hover {
	background: #fff;
	color: #333;
}
/*resposive*/

@media (max-width:600px) {
	.wrapper {
		width: 100%;
	}
	.menu {
		float: none;
		margin-top: 0;
	}
	.menu li a {
		padding: 5px;
		font-size: 11px;
	}
	.menu {
		text-align: center;
	}
	.banner-text {
		width: 100%;
		height: auto;
		margin: 15% 0;
	}
	.banner-text h1 {
		font-size: 30px;
	}
}

 
        </style>   
</head>
<body>

    <header>
<div>
    <div class="wrapper">
                <ul class="menu">
                <li><a href="menu.jsp">Dashboard</a></li>
                    <li><a href="upload.jsp">Upload</a></li>
                    <li><a href="download.jsp">Download</a></li>
                    <li><a href="#">Aboutus</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
             </div>
</div>
            
        <div class="banner-text">
            <h1>Welcome To Reports<span>Development</span></h1>
            <a href="menu.jsp">Dashboard</a>
        </div>
    </header>
</body>
</html>
