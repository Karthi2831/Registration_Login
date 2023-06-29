package Reg_Login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;



public class JDBC {
	
	
static  Connection con;
	
	
	// Connection Method For All
	
	public static void connection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/reglogin";
		String username ="root";
		String password ="Karthi@31";
		 con = DriverManager.getConnection(url,username,password);
	}
	
	// Insert user Details from Reg_Servlet
	
	public int insert(Member Member) throws ClassNotFoundException, SQLException,NumberFormatException
	{
		
		connection();
		
		String InsetQuery ="insert into member values(?,?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps = con.prepareStatement(InsetQuery);
		
		int result;
		ps.setString(1, Member.getUname());
		ps.setString(2, Member.getEmail());
		ps.setString(3, Member.getPassword());
		ps.setString(4, Member.getMobile());
		ps.setString(5, Member.getDOB());
		ps.setString(6, Member.getGender());
		ps.setString(7, Member.getAddress());
		ps.setString(8, Member.getPlace());
		ps.setString(9, Member.getState());
		ps.setInt(10, Member.getPincode());
		
		
       try {
		ps.executeUpdate();
	    result =1;
       }
       catch(SQLException se)
       {
    	   se.fillInStackTrace();
    	   result =0;
       }
		
       return result;
	}

	
	
	//Login method if email and password is correct or not
	public boolean check(String Email, String Password) throws ClassNotFoundException, SQLException
	{
		connection();
		
		String checkquery ="select Email,Reg_Password from member where Email=? and Reg_Password=?";
		
		PreparedStatement ps = con.prepareStatement(checkquery);
		ps.setString(1, Email);
		ps.setString(2, Password);
		ResultSet i=ps.executeQuery();
	if(i.next())
	{
		
		return true;
	}
		return false;
		
	}
	
	// Forgot password using email to verify
	
	public static boolean VerifyEmail(String VerifyEmail) throws ClassNotFoundException, SQLException
	{
		connection();
		
		String checkquery ="select Email from member where Email=?";
		
		PreparedStatement ps = con.prepareStatement(checkquery);
		ps.setString(1, VerifyEmail);
		
		ResultSet i=ps.executeQuery();
	if(i.next())
	{
		
		return true;
	}
		return false;
		
	}
	

	//Set New Password From the user From Register Servlet 

	public static boolean SetNewPassword(String new_Password, String verfiyemail) throws ClassNotFoundException, SQLException {
		
		connection();
		
        String checkquery ="update member set Reg_Password=? where Email =?";
		
		PreparedStatement ps = con.prepareStatement(checkquery);
		ps.setString(1, new_Password);
		ps.setString(2, verfiyemail);
		ps.executeUpdate();
		
		return true;
		
	}
	
	
	public static String Take_Name() throws SQLException, ClassNotFoundException
	{
        connection();
		
        String S=null;
        
        String takequery ="Select Full_Name from member";
		
		PreparedStatement ps = con.prepareStatement(takequery);
		
		ResultSet rs =ps.executeQuery();
		
		while(rs.next())
		{
			S=rs.getString(1);
		}
		
		return S;
		
	}
	
	public static String auto_password()
	{
		
		String Uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		String Lowercase = "abcdefghijklmnopqrstuvwxyz";
		String numbers = "0123456789";
		String Spl_chars = "@$%&";
		int length = 10;
		
		String combination = Uppercase + Lowercase + numbers + Spl_chars;
		
		
		char[] password = new char[length];
		
		Random r = new Random();
		
		for(int i = 0; i < length; i++)
		{
			password [i] = combination.charAt(r.nextInt(combination.length()));
		}
		
		String pass = new String(password);
		
		//System.out.println("Generated Password is " + new String(password));
		return pass;
		
	}

}
