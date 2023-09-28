package database;

import java.sql.*;

public class Conn {
	
	
	    Connection con;
		PreparedStatement pst;
	 
	    public Conn(){ 
	    	try{
	            Class.forName("com.mysql.cj.jdbc.Driver");

	            String url = "jdbc:mysql://localhost:3306/pizza";
	             con = DriverManager.getConnection(url, "root", "guddu234");

	           

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

}
