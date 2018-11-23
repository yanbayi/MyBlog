package com.gugu.servlet;



import java.io.IOException;
import java.io.PrintWriter;
 
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.gugu.util.SendMail;

public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletConfig Servletconf; 
	private String username;
	private String userpassword;
	private String email;
	private String msg;
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		this.Servletconf=config;
	}
   	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		username = request.getParameter("username");
		userpassword = request.getParameter("userpassword");
		email=request.getParameter("email");
		

		System.out.println(username+email+userpassword);
		System.out.println(Servletconf.getInitParameter("smtphost"));
		if(sendmail(email,username,userpassword,email))
		{
			msg="<script>alert('发送成功!')</script>"+"<script> window.location.href='login.jsp' </script>";
		}
		else
		{
			msg="<script>alert('发送失败')</script>";
			
		}
		toResponse(response,msg);
	}
	
	private boolean sendmail(String mailto,String username,String userpassword,String email){
		String MailTo=mailto;
		String MailSubject="welcome gugu !!";
		String MailBCopyTo="";
	    String MailCopyTo="";
	    String MailBody="欢迎    "+username + "<br/>欢迎！请确认此邮件地址以激活您的账号。<br/>" +
	    		"<br />" +
	    		"	点击激活码完成注册。</p>" +
	    		"	http://localhost:8080/gugu/ActiveServlet?userName="+username+
	    		"&userPassword="+userpassword+
	    		"&userEmail="+email;
		String SMTPHost = Servletconf.getInitParameter("smtphost");
		String Port=Servletconf.getInitParameter("port");
		String MailUsername = Servletconf.getInitParameter("mailusername");
		String MailPassword = Servletconf.getInitParameter("mailpassword");
		String MailFrom = Servletconf.getInitParameter("mailfrom");
		if(SMTPHost==null||SMTPHost==""||MailUsername==null||MailUsername==""||MailPassword==null||MailPassword==""||MailFrom==null||MailFrom=="")
		{
			System.out.println("Servlet parameter Wrongs");
		}
		SendMail send=new SendMail(SMTPHost,Port,MailUsername,MailPassword);
		if(send.sendingMimeMail(MailFrom, MailTo, MailCopyTo, MailBCopyTo, MailSubject, MailBody)){
			return true;
		}
		else
		{
			return false;
		}
	}
	private void toResponse(HttpServletResponse response,String toString) throws IOException
	{
		response.setCharacterEncoding("gb2312");
		PrintWriter out=response.getWriter();
		out.println(toString);
	}

}
