<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        *{
            padding: 0px;
            margin: 0px;
        
        }
        input[type=text],label{
            width: 50%;
            padding: 10px;
            display: flex;
            margin: auto;
}
         #button{
            width: 18%;
            height: 28px;
            margin: -10px 0px 20px 190px;
            background-color: cornflowerblue;
}
        #hdr{
            background-color: aqua;
            display: flex;
            justify-content: center;
            height:60px;
            align-items: center;
        }
        #formbox{
            margin-top: 70px;
            border: 5px solid black;
            max-width: 500px;
            height: 300px;
            margin-left: 150px;
            padding: 10px 10px;
     
        }
        #pngbox{
          
            margin-top: -390px;
            margin-left: 800px;
        }
        img{
    width: 100%;
}
    </style>
</head>
<body>
    
    <div>
        <div id="hdr"><h1>OrderPiZZa</h1></div>
        <div id="formbox">
        <div> <h2>Login Here :</h2><br></div>
            <form  action="LoginServlet" method="post">
                
                <label for="name">EmaiId:</label>
                <input type="text" id="lname" name="email"><br>
                <label for="name">Password:</label>
                <input type="text"  name="password"><br>
                 <input type="submit" id="button" value="Submit">
            </form>
            <br>
            <br><br>
            <h4>   New User! Register : <a href="index.jsp">Register</a> </h4> </div>
        <div id="pngbox">
            <img src="img/pizza.jpg" >
        </div>
    </div>
</body>
</html>