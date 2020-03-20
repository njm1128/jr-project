package com.patis.common.mail;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.DependsOn;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

import com.patis.model.BoardVO;
import com.patis.model.EmpVO;
import com.patis.model.MailVO;

@Service("mailService")
public class MailServiceImpl implements I_MailService {

	@Resource(name="mailSender")
	JavaMailSender mailSender;

	@Resource(name="mailDAO") 
	I_MailDAO mailDAO;	
	
	@Override
	public void sendEmail(MailVO mailVO) {
		final MimeMessagePreparator preparator = new MimeMessagePreparator() {
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");

				helper.setFrom(mailVO.getMailFrom());
				helper.setTo(mailVO.getMailTo());
				helper.setSubject(mailVO.getMailSubject()); 
				helper.setText(mailVO.getMailContent(), true);
			}
		};
		mailSender.send(preparator);
	}

	@Override
	public List<EmpVO> getEmpListForMail(String BOARD_TYPE) throws SQLException {
		return mailDAO.getEmpListForMail(BOARD_TYPE);
	}

	@Override
	public String getBoardNameForMail(String BOARD_TYPE) throws SQLException {
		return getBoardNameForMail(BOARD_TYPE);
	}
	
	public void sendBoardWriteMail(BoardVO boardVO) throws SQLException {
		List<EmpVO> empList = mailDAO.getEmpListForMail(boardVO.getB_TYPE());
		String boardName = mailDAO.getBoardNameForMail(boardVO.getB_TYPE());
		
		for(EmpVO emp : empList) {
			MailVO mailVO = new MailVO();
			mailVO.setDefaultSetting();
			mailVO.setMailTo(emp.getUSER_EMAIL());
			mailVO.setMailSubject("중랑구청 도시재생과 홈페이지 알림");
			mailVO.setMailContent(boardName + " 게시판에 글이 등록되었습니다.");
			sendEmail(mailVO);
		}
	}
}
