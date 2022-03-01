package com.jjobplanet.jjobplanet;

import java.util.Properties;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;
import org.springframework.mail.javamail.MimeMessageHelper;


@Service
public class MailService {
    
    private final String MAIL_HOST          = "smtp.gmail.com";
    private final int MAIL_PORT             = 587;

    private final String MAIL_USER          = "jjobplanet4@gmail.com";
    private final String MAIL_PASSWORD      = "siqibdkqheyfyorf";

    public boolean sendMail(String target)
    {   
               
        try {
            
            JavaMailSenderImpl sender = new JavaMailSenderImpl();
            sender.setHost(MAIL_HOST);
            sender.setPort(MAIL_PORT);
            sender.setUsername(MAIL_USER);
            sender.setPassword(MAIL_PASSWORD);

            Properties properties = System.getProperties();
            properties.put("mail.smtp.starttls.enable", true);
            sender.setJavaMailProperties(properties);


            // SimpleMailMessage message = new SimpleMailMessage();
            MimeMessage message = sender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
            helper.setTo(target);
            helper.setSubject("안녕하세요. JJobplanet입니다. 인증 메일입니다.");

            //helper.setText("JJobplanet을 사용하기 위해 계정을 인증을 완료해주세요.");
            
            
            helper.setText("<h3>JJobplanet을 사용하기 위해 계정을 인증을 완료해주세요.</h3>" 
                        +  "<button>인증하기</button>", true);


    
            sender.send(message);

            return true;

        } catch(Exception e) { return false; }
    }
}
