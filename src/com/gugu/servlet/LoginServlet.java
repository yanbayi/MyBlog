package com.gugu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gugu.dao.LoginDao;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
    	this.doPost(request, response);
    	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		
		
		String userName = (String)request.getParameter("userName");
		String userPassword = (String) request.getParameter("userPassword");
		String validationCode = request.getParameter("validationCode");

        HttpSession session = request.getSession();
        String validation_code = (String)session.getAttribute("validation_code");

        if(validationCode.equalsIgnoreCase(validation_code)){
        	
        	LoginDao log = new LoginDao();
    		if(log.check(userName,userPassword)==1) {
    			request.getSession().setAttribute("userName", userName);
    			request.getSession().setAttribute("rights", "1");
    			response.sendRedirect("admin.jsp");
    		}
    		else if(log.check(userName,userPassword)==2) {
    			request.getSession().setAttribute("userName", userName);
    			request.getSession().setAttribute("rights", "2");
    			response.sendRedirect("index.jsp");
    		}
    		else if(log.check(userName,userPassword)==3) {
    			request.getSession().setAttribute("userName", userName);
    			request.getSession().setAttribute("rights", "3");
    			response.sendRedirect("index.jsp");
    		}
    		else{
        		request.getRequestDispatcher("fall.jsp").forward(request, response);
        	}	

        }else{

        	request.getRequestDispatcher("fall2.jsp").forward(request, response);
        }
		
	}

}
