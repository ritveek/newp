package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.SaveUser;
import pojoclass.Account;

/**
 * Servlet implementation class User
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String username= request.getParameter("name");
		String user_email= request.getParameter("email");
		String userpass=request.getParameter("password");
		String usercpass=request.getParameter("cpass");

		if(username!=null&&!username.isEmpty()&& user_email!=null&&!user_email.isEmpty()&& userpass!=null&&!userpass.isEmpty()) {
			Account ac= new Account(username,user_email,userpass);
			
			SaveUser sud=new SaveUser();
			
			if(sud.save(ac)) {
				out.println("Account Created");
				
//				response.sendRedirect("Login.jsp");
				
			}
			else
				out.println("Error! Try again");
		}
		
		else {
			out.println("Invalid input");
		}
		
		
	}
}
		

//request.setAttribute("name", s);
//request.getRequestDispatcher("Greetings").forward(request, response);

		
//		//Dtatabase connection
//		if(username!=null&&!username.isEmpty()&& user_email!=null&&!user_email.isEmpty()&& userpass!=null&&!userpass.isEmpty()) {
//			try {
//	            Class.forName("com.mysql.cj.jdbc.Driver");
//	            String url = "jdbc:mysql://localhost:3306/pizza";
//	             Connection con = DriverManager.getConnection(url, "root", "guddu234");
//	             
//	             String q="insert into account(name,email,password) values(?,?,?)";
//	             PreparedStatement st=con.prepareStatement(q);
//	             st.setString(1, username);
//	             st.setString(2, user_email);
//	             st.setString(3, userpass);
//	             st.executeUpdate();
//	             out.println(username+user_email+userpass+usercpass);
//	             
//			} catch (Exception e) {
//            e.printStackTrace();
//			}
//		}
//		else {
//			out.println("Enter valid details");
//			
//			try {
//				request.setAttribute("error", "Please enter all the details");
//				request.getRequestDispatcher("index.jsp").forward(request, response);
//			} catch (javax.servlet.ServletException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		
//	    
//	
//
//}
