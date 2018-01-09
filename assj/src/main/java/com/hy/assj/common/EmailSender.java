package com.hy.assj.common;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class EmailSender {

	@Autowired
	private JavaMailSender mailSender;
	
	public void sendEmail(String subject, String content, String receiver,
			String sender) throws MessagingException{
		MimeMessage mimeMsg =mailSender.createMimeMessage();
		mimeMsg.setSubject(subject);	//이메일 제목
		mimeMsg.setText(content);	//내용
		mimeMsg.setRecipient(RecipientType.TO, 
				new InternetAddress(receiver));	//받는 사람
		mimeMsg.setFrom(new InternetAddress(sender)); //보내는 사람
		
		mailSender.send(mimeMsg);	//메일 발송하기
	}
	
}
