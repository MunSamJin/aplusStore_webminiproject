package mail;

import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
<<<<<<< HEAD
 
public class LoginMail {
 
=======
<<<<<<<< HEAD:src/main/java/mail/Mail.java

import dto.OrderDTO;

========
>>>>>>>> 1031-ys:src/main/java/mail/LoginMail.java
 
public class LoginMail {
 
<<<<<<<< HEAD:src/main/java/mail/Mail.java
    public static void mailSend(OrderDTO orderNumber, OrderDTO dto) {
           	
========
>>>>>>> 1031-ys
    public int mail(String mailId) {
    	
    	Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
         
<<<<<<< HEAD
=======
>>>>>>>> 1031-ys:src/main/java/mail/LoginMail.java
>>>>>>> 1031-ys
        Properties p = System.getProperties();
        p.put("mail.smtp.starttls.enable", "true");     // gmail은 true 고정
        p.put("mail.smtp.host", "smtp.naver.com");      // smtp 서버 주소
        p.put("mail.smtp.auth","true");                 // gmail은 true 고정
        p.put("mail.smtp.port", "465");                 // 네이버 포트
        //p.put("mail.smtp.ssl.protocols", "TLSv1.2"); //코드 추가 해줌
        p.put("mail.smtp.ssl.enable", "true");
           
        Authenticator auth = new MyAuthentication();
        //session 생성 및  MimeMessage생성
        Session session = Session.getDefaultInstance(p, auth);
        MimeMessage msg = new MimeMessage(session);
         
        try{
            //편지보낸시간
            msg.setSentDate(new Date());
            InternetAddress from = new InternetAddress() ;
            from = new InternetAddress("sikkkkkk@naver.com"); //발신자 아이디
            // 이메일 발신자
            msg.setFrom(from);
            // 이메일 수신자
<<<<<<< HEAD
            InternetAddress to = new InternetAddress(mailId); //받을사람 아이디
=======
            InternetAddress to = new InternetAddress(dto.getRealEmail()); //받을사람 아이디
>>>>>>> 1031-ys
            msg.setRecipient(Message.RecipientType.TO, to);
           
            // 이메일 제목
            msg.setSubject(
                  "회원가입 인증 이메일 입니다.", "UTF-8");
            // 이메일 내용
           
            msg.setText(
<<<<<<< HEAD
=======
<<<<<<<< HEAD:src/main/java/mail/Mail.java
            		dto.getOrderName()+"님의 주문번호는 "+orderNumber.getOrderNum()+"입니다.\n"
            		, "UTF-8");
            
========
>>>>>>> 1031-ys
            		 "홈페이지를 방문해주셔서 감사합니다." +
            	                "<br><br>" + 
            	                "인증 번호는 " + checkNum + "입니다." + 
            	                "<br>" + 
            	                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.");
<<<<<<< HEAD
=======
>>>>>>>> 1031-ys:src/main/java/mail/LoginMail.java
>>>>>>> 1031-ys
           
            // 이메일 헤더
            msg.setHeader("content-Type", "text/html");
            //메일보내기
            javax.mail.Transport.send(msg, msg.getAllRecipients());
             
        }catch (AddressException addr_e) {
            addr_e.printStackTrace();
        }catch (MessagingException msg_e) {
            msg_e.printStackTrace();
        }catch (Exception msg_e) {
            msg_e.printStackTrace();
        }
        	return checkNum;
    }
}
 
<<<<<<< HEAD
//class MyAuthentication extends Authenticator {
//
//    PasswordAuthentication pa;
//    public MyAuthentication(){
//
//        String id = "sikkkkkk@naver.com";  //네이버 이메일 아이디
//        String pw = "kostagroup1!";        //네이버 비밀번호
//
//        // ID와 비밀번호를 입력한다.
//        pa = new PasswordAuthentication(id, pw);
//    }
//
//    // 시스템에서 사용하는 인증정보
//    public PasswordAuthentication getPasswordAuthentication() {
//        return pa;
//    }
//}
=======
class MyAuthentication extends Authenticator {
      
    PasswordAuthentication pa;
    public MyAuthentication(){
         
<<<<<<<< HEAD:src/main/java/mail/Mail.java
    	String id = "orchid59@naver.com";  //네이버 이메일 아이디
        String pw = "1051102qqq";        //네이버 비밀번호
========
        String id = "sikkkkkk@naver.com";  //네이버 이메일 아이디
        String pw = "kostagroup1!";        //네이버 비밀번호
>>>>>>>> 1031-ys:src/main/java/mail/LoginMail.java
 
        // ID와 비밀번호를 입력한다.
        pa = new PasswordAuthentication(id, pw);
    }
 
    // 시스템에서 사용하는 인증정보
    public PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }
}
>>>>>>> 1031-ys
