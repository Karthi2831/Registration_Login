//this program is using to send otp from the given email

package Reg_Login;

	import java.util.Properties;
	import java.util.Random;


    import jakarta.mail.Authenticator;
	import jakarta.mail.Message;
	import jakarta.mail.PasswordAuthentication;
	import jakarta.mail.Session;
	import jakarta.mail.Transport;
	import jakarta.mail.internet.InternetAddress;
	import jakarta.mail.internet.MimeMessage;


	public class Email_OTP  {
//	    public static void main(String[] args) {
	//
//	    	EmailSender gEmailSender = new EmailSender();
//	    	gEmailSender.send();
//	       
//	    }
	//    
		static String otp;
		String result;
	    public static String send(String Verifytoemail)   
	    
	    {
	    	Email_OTP mailSender = new Email_OTP();
	    	 String to = Verifytoemail;
	         String from = "torrentck3103@gmail.com";
	         String subject = "Second: Sending email using GMail";
	         otp =mailSender.pass();
	         String text1 = "your otp is="+otp;
	         String text2 = "";

	         boolean b = Email_OTP.sendEmail(to, from, subject, text1,text2);
	         String result = null ;
	         if (b) {
	        	 
	             //System.out.println("Email is sent successfully");
	             result =otp ;
	         } else {
	            // System.out.println("There is problem in sending email");
	        	 String s ="false";
	        	 result =s;
	         }
			
	         return result;
	    }
	    
	    
	   //email password 
	 
		    public static void send_email_password(String Email_id,String Password)   
		    
		    {
		    	
		    	
				String to = Email_id;
				String from = "torrentck3103@gmail.com";
				String subject = "Welcome to Puviagam || Account Details";
				
				String text1 = "Your Email-ID is : " + Email_id;
				String text2 = "      		Your Password is : " + Password ;
				boolean b = Email_OTP.sendEmail(to, from, subject, text1,text2);
				
				if(b)
				{
					System.out.println("Send Sucess");
				}
				else
				{
					System.out.println("Not Send Sucess");
				}
				
		    }



	    public static  boolean sendEmail(String to, String from, String subject, String text1 ,String text2) {
	        boolean flag = false;

	        //logic
	        //smtp properties
	        Properties properties = new Properties();
	        properties.put("mail.smtp.auth", true);
	        properties.put("mail.smtp.starttls.enable", true);
	        properties.put("mail.smtp.port", "587");
	        properties.put("mail.smtp.host", "smtp.gmail.com");

	        final String username = "torrentck3103@gmail.com";
	        final String password = "bftuslqwveddbwdm";


	        //session
	        Session session = Session.getInstance(properties, new Authenticator() {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(username, password);
	            }
	        });

	        try {

	            Message message = new MimeMessage(session);
	            message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
	            message.setFrom(new InternetAddress(from));
	            message.setSubject(subject);
	            message.setText(text1+text2);
	            Transport.send(message);
	            flag = true;
	        } catch (Exception e) {
	            e.printStackTrace();
	        }


	        return flag;
	        
	    }
	    
	    
	    
	    
	    //Random otp genetator it is using to send otp parpose
	    public String pass() {
	    
	    String num = "123567890";
	    
	    String combination =num;
	    
	    int len =4;
	    
	    char ch[] = new char[len];
	    Random r = new Random();
	   
	    for(int i=0;i<len;i++)
	    {
	    	ch[i] = combination.charAt(r.nextInt(combination.length()));
	    }
	    
	    return (new String(ch));
	    }
	    

}
