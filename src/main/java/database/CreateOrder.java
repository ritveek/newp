package database;

import java.sql.PreparedStatement;

import pojoclass.Order;

public class CreateOrder {
	
	
	public CreateOrder(){
		
	}
	

	Conn c= new Conn();
	public boolean setOrder(Order co) {
		boolean b=false;
		try{
			
			String q="insert into orders(name,size,ingredients,price,status,email) values(?,?,?,?,?,?)";
			PreparedStatement st=c.con.prepareStatement(q);
            st.setString(1, co.getName());
            st.setString(2, co.getSize());
            st.setString(3, co.getIngredients());
            st.setDouble(4, co.getPrice());
            st.setString(5, co.getStatus());
            st.setString(6, co.getEmail());
           
            //userid=email
            //status=fix 
            st.executeUpdate();
            b=true;
		}catch (Exception e) {
            e.printStackTrace();
			}
			return b;
		
	}
	

}
