<%@page import="java.sql.ResultSet"%>
<%@page import="database.GetPizza"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import= "pojoclass.Account" %>
    
    <%
	Account ac= (Account)session.getAttribute("currentUser");
	if(ac==null){
		response.sendRedirect("Login.jsp");
	}
%> 
<%
//from radio button of pizzasizes	
		String psize=request.getParameter("psize");

		HttpSession s=request.getSession();
		s.setAttribute("selectedsize", psize);
		

		
%>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pizza Size</title>
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
       table,th,td {
             border:  2px solid magenta;
             border-collapse: collapse;
               text-align: center;
        }

    </style>
</head>
<body>
    
    <div>
        <div id="hdr"><h1>OrderPiZZa</h1></div><br>
    <h3 style="color: blue">  <%= ac.getName() %> ,you have selected size:<%= psize %> </h3><br><br>
   
    <h2 > Select Ingredients : </h2>
    <form  action="createorder.jsp" method="post">
    <div id="formbox">
        <table style="width:70%; height:100%">
            <tr > 
                <th>Id</th>
                <th>Name</th>
                <th>Price</th>
                <th>Select</th>
            </tr>
                        
          <% 
           		response.setContentType("text/html");
           		GetPizza p=new GetPizza();
           		
           		ResultSet rs=p.ingredients();
           		while(rs.next()){           			
           			out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td><input type='checkbox' name='ping' value='"+rs.getString(2)+"'></td></tr>");
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