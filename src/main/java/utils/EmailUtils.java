package utils;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.Properties;

public class EmailUtils {

    private static final JavaMailSenderImpl sender = new JavaMailSenderImpl();

    static {
        sender.setHost("smtp.qq.com");
        sender.setProtocol("smtp");
        sender.setPort(465);
        sender.setUsername("1500492856@qq.com");
        sender.setPassword("uyrcjfzvnvasbafh");
        sender.setDefaultEncoding("Utf-8");
        Properties p = new Properties();
        p.setProperty("mail.smtp.ssl.enable", "true");
        sender.setJavaMailProperties(p);
    }

    /**
     * 发送邮件
     * @param subject
     * @param text
     * @return
     */
    public static boolean sendEmail(String subject,String text){
        try{
            SimpleMailMessage message = new SimpleMailMessage();
            //设置邮件标题
            message.setSubject(subject);
            //设置邮件正文
            message.setText(text);
            //设置邮件发送人
            message.setFrom("1500492856@qq.com");
            //设置邮件接收人
            message.setTo("1500492856@qq.com");
            //发送邮件
            sender.send(message);
            return true;
        }catch (Exception e){
            return false;
        }
    }


}
