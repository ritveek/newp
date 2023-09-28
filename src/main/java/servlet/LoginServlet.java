package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.SaveUser;
import pojoclass.Account;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String username=request.getParameter("email");
		String password=request.getParameter("password");
		
		if(username!=null&&!username.isEmpty()&& password!=null&&!password.isEmpty()) {
			SaveUser su=new SaveUser();
			Account ac=su.getEmailandPass(username, password);
			
			if(ac!=null) {
				//pizzapage
				//Session obj will hold the data until logout/browser close
				HttpSession s=request.getSession();
				s.setAttribute("currentUser", ac);
				response.sendRedirect("home.jsp");
			}
			else {
				out.println("User not found");
			}
		}
		else {
			out.println("Enter valid details");
		}
	}

}
