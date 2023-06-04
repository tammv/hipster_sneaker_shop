package Control.ControlWeb;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



import Model.Account_SignUp;

public class Send {
   final String username ="hipsterstore08@gmail.com";
   final String password = "rsfdqomljclxmgip";
   final String host = "smtp.gmail.com"; 
    public void sendEmail(Account_SignUp acc) {
        
        
        int port = 587; 
        String fromEmail = username;
        String toEmail = acc.getEmail();

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", port);
        props.put("mail.smtp.ssl.protocols", "TLSv1.2");

        Authenticator auth = new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        };

        Session session = Session.getInstance(props, auth);

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            message.setSubject("Authenticate your Gmail account");

            String htmlContent = "<html><body><h1>Verify gmail: </h1><a href='http://localhost:8080/final_project/process?username=" + acc.getUsername() + "&email="+acc.getEmail()+"&password="+acc.getPassword()+"'>Click Me</a></body></html>";
            message.setContent(htmlContent, "text/html");

            Transport.send(message);

            System.out.println("Email sent successfully.");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

    public void sendEmailReset(String email){
        int port = 587; 
        String fromEmail = username;
        String toEmail = email;

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", port);
        props.put("mail.smtp.ssl.protocols", "TLSv1.2");

        Authenticator auth = new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        };

        Session session = Session.getInstance(props, auth);

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            message.setSubject("Reset Password");

            String htmlContent = "<html><body><h1>Reset password: </h1><a href='http://localhost:8080/final_project/reset?email=" + email +"'>Click Me</a></body></html>";
            message.setContent(htmlContent, "text/html");

            Transport.send(message);

            System.out.println("Reset Password.");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
