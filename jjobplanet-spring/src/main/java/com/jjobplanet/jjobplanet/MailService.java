package com.jjobplanet.jjobplanet;

import java.util.Properties;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

@Service
public class MailService {
    
    private final String MAIL_HOST          = "smtp.gmail.com";
    private final int MAIL_PORT             = 587;

    private final String MAIL_USER          = "jjobplanet4@gmail.com";
    private final String MAIL_PASSWORD      = "siqibdkqheyfyorf";

    public boolean sendMail(String target)
    {

        try {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setTo(target);
            message.setSubject("subject");
            message.setText("content");
    
            JavaMailSenderImpl sender = new JavaMailSenderImpl();
            sender.setHost(MAIL_HOST);
            sender.setPort(MAIL_PORT);
            sender.setUsername(MAIL_USER);
            sender.setPassword(MAIL_PASSWORD);

            Properties properties = System.getProperties();
            properties.put("mail.smtp.starttls.enable", true);
            sender.setJavaMailProperties(properties);
    
            sender.send(message);

            return true;
        } catch(Exception e) {
            return false;
        }
    }
}
