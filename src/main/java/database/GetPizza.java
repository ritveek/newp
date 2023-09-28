package database;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class GetPizza {
Conn c= new Conn();
	
	
public  ResultSet pizzaTypes() throws SQLException{
    ResultSet rs;
    try {
        String q1 = "Select * from pizzatypes";
        Statement st=c.con.createStatement();
       rs = st.executeQuery(q1);

        return rs;
    } catch (SQLException e) {
        e.printStackTrace();
        throw e;
    }

		}



public  ResultSet pizzaSizes(int n) throws SQLException {
    ResultSet rs;
    try {
        String q1 = "Select size,price from pizzasizes where id ='"+n+"'";
        Statement st=c.con.createStatement();
        rs = st.executeQuery(q1);
        return rs;
    } catch (SQLException e) {
        e.printStackTrace();
        throw e;
    }
}



public  int pizzaId(String s) throws SQLException {
   int id = 0;
   ResultSet rs;
    try {
        String q1 = "Select id from pizzatypes where name ='"+s+"'";
        Statement st=c.con.createStatement();
         rs=st.executeQuery(q1);
         if(rs.next()) {
        	 id=rs.getInt(1);
        	 System.out.println(id);
        	 
         }
       
    } catch (SQLException e) {
        e.printStackTrace();
        throw e;
    }
    return id;
}



//for Ingredients

public  ResultSet ingredients() throws SQLException {
	 
	   ResultSet rs;
	    try {
	        String q1 = "Select * from ingredients ";
	        Statement st=c.con.createStatement();
	         rs=st.executeQuery(q1);
	         
	       
	    } catch (SQLException e) {
	        e.printStackTrace();
	        throw e;
	    }
	    return rs;
	}



public  float ingPrice(String s) throws SQLException {
	 
	   float n=0;
	    try {
	        String q1 = "Select price from ingredients where name='"+s+"'";
	        Statement st=c.con.createStatement();
	         ResultSet rs=st.executeQuery(q1);
	         if(rs.next()) {
	        	 n+=rs.getFloat("price");
	        	 
	         }
	       
	    } catch (SQLException e) {
	        e.printStackTrace();
	        throw e;
	    }
	    return n;
	}


public  float sizePrice(int id,String s) throws SQLException {
	 
	   float n=0;
	    try {
	        String q1 = "Select price from pizzasizes where id="+id+" and size='"+s+"'";
	        Statement st=c.con.createStatement();
	         ResultSet rs=st.executeQuery(q1);
	         if(rs.next()) {
	        	 n+=rs.getInt("price");
	         }
	       
	    } catch (SQLException e) {
	        e.printStackTrace();
	        throw e;
	    }
	    return n;
	}


}	

