<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
<%@ page import= "pojoclass.Account" %>
    
    
<%
	Account ac= (Account)session.getAttribute("currentUser");
	if(ac==null){
		response.sendRedirect("Login.jsp");
	}
%>    
   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <style>
        *{
            padding: 0px;
            margin: 0px;
        
        }
        input[type=text],label{
            width: 50%;
            padding: 10px;
            display: flex;https://github.com/ritveek/newp.git
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
           border: 5px solid red;
            max-width: 400px;
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
        #container{
            border: 2px dashed green;
            background-color:rgb(248, 248, 82);
            border-radius: 10px;
            height: 50px;
            width: 30%;
            display:flex;
            align-items:center;
            
        } 

    </style>
</head>
<body>
    
    <div>
        <div id="hdr"><h1>OrderPiZZa</h1></div>
    <h1 style="color: blue"> Welcome,  <%= ac.getName() %> </h1><br><br>
    <div id="formbox">
        <div id="container"><a href="pizzatypes.jsp">Order Pizza</a></div><br><br>
        <div id="container"><a href="orderhistory.jsp">Order Summary</a></div><br><br>
        <div id="container"><a href="status.jsp">Change status</a></div>
    </div> 
        <div id="pngbox">
            <img src="img/pizza.jpg" >
        </div>
    </div>
</body>
</html>