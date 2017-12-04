package mail;

import java.util.Properties;

public class MailSenderInfo {

	// 发送邮件的服务器的IP和端口
	private String mailServerHost;
	private String mailServerPort = "25";
	// 邮件发送者的地址
	private String fromAddress;
	// 邮件接收者的地址
	private String toAddress;
	
	
	// 邮件主题
	private String subject;
	// 邮件的文本内容
	private String content;
	// 邮件附件的文件名
	private String[] attachFileNames;
	private boolean validate;

	/**
	 * 获得邮件会话属性
	 */
	public Properties getProperties() {
		Properties p = new Properties();
		p.put("mail.smtp.host", this.mailServerHost);
		p.put("mail.smtp.port", this.mailServerPort);
		p.put("mail.smtp.auth", isValidate() ? "true" : "false");

		// gmail邮箱需要特殊处理：1：SSL加密 ; 2: 465端口;
		// 参考：http://www.blogjava.net/hwpok/archive/2009/03/20/261097.html
		if (this.mailServerHost.indexOf("smtp.gmail.com") >= 0) {
			p.setProperty("mail.smtp.socketFactory.class",
					"javax.net.ssl.SSLSocketFactory");
			p.setProperty("mail.smtp.socketFactory.fallback", "false");
			p.setProperty("mail.smtp.port", "465");
			p.setProperty("mail.smtp.socketFactory.port", "465");
		}
		return p;
	}

	public String getMailServerHost() {
		return mailServerHost;
	}

	public void setMailServerHost(String mailServerHost) {
		this.mailServerHost = mailServerHost;
	}

	public String getMailServerPort() {
		return mailServerPort;
	}

	public void setMailServerPort(String mailServerPort) {
		this.mailServerPort = mailServerPort;
	}

	public boolean isValidate() {
		return isValidate();
	}

	public void setValidate(boolean validate) {
		this.validate = validate;
	}

	public String[] getAttachFileNames() {
		return attachFileNames;
	}

	public void setAttachFileNames(String[] fileNames) {
		this.attachFileNames = fileNames;
	}

	public String getFromAddress() {
		return fromAddress;
	}

	public void setFromAddress(String fromAddress) {
		this.fromAddress = fromAddress;
	}

	

	public String getToAddress() {
		return toAddress;
	}

	public void setToAddress(String toAddress) {
		this.toAddress = toAddress;
	}

	

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String textContent) {
		this.content = textContent;
	}
}
