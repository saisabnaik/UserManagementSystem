package empcrud.check;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CheckDao {
String sql="select * from admin where email=? and password=?";

	
	public boolean check( String email, String password)
	{
		try
		{
			Class.forName("org.postgresql.Driver");
			Connection con= DriverManager.getConnection("jdbc:postgresql://localhost:5432/employee","postgres","root");
			 
	        PreparedStatement pst=con.prepareStatement(sql);
	        pst.setString(1,email);
	        pst.setString(2,password);
	        ResultSet rs=pst.executeQuery();
	        if(rs.next())
	        {
	        	return true;
	        }
	        con.close();
		}
		catch(Exception e )
		{
			e.printStackTrace();
		}
		
		return false;
	}

}
