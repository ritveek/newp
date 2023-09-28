<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OrderpiZZa</title>
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
            margin-top: 40px;
            border: 5px solid black;
            max-width: 500px;
            height: 500px;
            margin-left: 150px;
            padding: 10px 10px;
     
        }
        #pngbox{
          
            margin-top: -500px;
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
        <div> <h2>Register Here :</h2><br></div>
            <form  action="UserServlet" method="post">
                <label for="name">Name:</label>
                <input type="text"  name="name" placeholder="Your name"><br>
                <label for="email">EmaiId:</label>
                <input type="text" name="email"><br>
                <label for="password">Password:</label>
                <input type="text" name="password"><br>
                <label for="password">Confirm Password:</label>
                <input type="text"  name="cpass"><br>
                <input type="submit" id="button" value="Submit">

            </form>
            
            <h4>Already an User! Login Here : <a href="Login.jsp">Login</a> </h4> </div>
        <div id="pngbox">
            <img src="img/pizza.jpg" >
        </div>
    </div>
    
</body>
</html>