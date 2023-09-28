package database;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;

import pojoclass.Account;


public class SaveUser {
	
	Conn c= new Conn();
	
	
	public boolean save(Account ac) {
		boolean b=false;
		try{
			
			String q="insert into account(name,email,password) values(?,?,?)";
			PreparedStatement st=c.con.prepareStatement(q);
            st.setString(1, ac.getName());
            st.setString(2, ac.getEmail());
            st.setString(3, ac.getPassword());
            st.executeUpdate();
            b=true;
			
		}catch (Exception e) {
            e.printStackTrace();
			}
			return b;
		
	}
	
	
	
	public Account getEmailandPass(String email, String password) {
		Account ac= null;
		try{
			String q="select * from account where email='"+email+"' and password='"+password+"'";
		
			Statement s=c.con.createStatement();
			ResultSet rs=s.executeQuery(q);
			
			if(rs.next()) {
				ac=new Account();
				String name=rs.getString("email");
				String pass=rs.getString("password");
				
				//Set in the account 
				ac.setEmail(name);
				ac.setPassword(pass);
				ac.setName(rs.getString("name"));
				return ac;
			}
		}
		catch (Exception e) {
            e.printStackTrace();
			}
		return ac;
		
	}

}
