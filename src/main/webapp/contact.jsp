<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <title>Contact Us</title>
<style>
* {
    margin: 0;
    padding: 0;
}

body{
    height: 100vw;
    background: #CCDDFF;
}

form{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    margin-top: 4%;
}

form input, form textarea, #newsletter{
    padding: 1.2%;
    margin: 0.8%;
    width: 65%;
}

textarea{
    resize: vertical;
}


#newsletter input, #newsletter p{
   display: inline-block;
   width: fit-content;
}

button{
    padding: 1.5% 2%;
    margin: 2%;
}

form input, form textarea, #newsletter, button{
    background: #F8FAFF;
    box-shadow: 8px 8px 4px 4px #ABC7FF;
    border: none;
}

#newsletter [type=checkbox]{
    box-shadow: none;
}
a{
border:double ;
}


</style>
</head>
<body>
    
    <form>
        <h1>Contact us</h1>
        <input type="text" placeholder="Full Name" id="fullName">
        <input type="email" placeholder="Enter your Email" id="email">
        <textarea placeholder="Your Message" id="message" rows="5"></textarea>
            
        <a href="index.jsp">Submit</a>
    </form>
</body>
</html>