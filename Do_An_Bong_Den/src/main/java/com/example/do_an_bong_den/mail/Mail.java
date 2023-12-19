package com.example.do_an_bong_den.mail;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class Mail {
  private static Properties prop = new Properties();

  static {
    prop.put("mail.smtp.host", MailProperties.getHost());
    prop.put("mail.smtp.port", MailProperties.getPort());
    prop.put("mail.smtp.auth", MailProperties.getAuth());
    prop.put("mail.smtp.socketFactory.port", MailProperties.getPort());
    prop.put("mail.smtp.socketFactory.class", "Javax.net.ssl.SSLSocketFactory");
  }

  public static boolean sendMail(String to, String subject, String mess) {
    Session session = Session.getInstance(prop, new Authenticator() {
      protected PasswordAuthentication getPasswordAuthentication(){
        return new PasswordAuthentication(MailProperties.getUser(), MailProperties.getPass());
      }
    });
    try{
      Message message = new MimeMessage(session);
      message.setFrom(new InternetAddress(MailProperties.getUser()));
      message.setRecipients(
        Message.RecipientType.TO, InternetAddress.parse(to));
      message.setSubject(subject);
      message.setText(mess);
      Transport.send(message);
      return true;

    }catch (MessagingException e){
      e.printStackTrace();
      return false;
    }
  }
}






