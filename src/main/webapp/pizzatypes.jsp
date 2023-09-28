<%@page import="java.sql.ResultSet"%>
<%@page import="database.GetPizza"%>
<%@page import="database.Conn"%>
<%@page import="java.sql.Connection"%>
<%@page import="pojoclass.Account"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
        table,th,td {
             border:  2px solid magenta;
             border-collapse: collapse;
            
               text-align: center;
        }

    </style>
</head>
<body>
    
    <div>
        <div id="hdr"><h1>OrderPiZZa</h1></div>
    <h1 style="color:blue">  Select your pizza </h1><br><br>
    
    <form  action="pizzasize.jsp" method="post">
    <div id="formbox">
        <table style="width:70%; height:100%">
            <tr > 
                <th>Id</th>
                <th>Name</th>
                <th>Select</th>
            </tr>
            
           <% 
           		response.setContentType("text/html");
           		GetPizza p=new GetPizza();
           		ResultSet rs=p.pizzaTypes();
          
           		while(rs.next()){
           			
           			out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td><input type='radio' name='pname' value='"+rs.getString(2)+"'></td></tr>");
           		}
           		
    	%>
            
            
      
        </table>
       
   
    <br><br>
    
   <input type="submit" id="button" value="Next">
   </div>
   </form>
    
        
        <div id="pngbox">
            <img src="img/pizza.jpg" >
        </div>
    </div>
</body>
</html>