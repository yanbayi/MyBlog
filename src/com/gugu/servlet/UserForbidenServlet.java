package com.gugu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gugu.dao.ActiveDao;


public class UserForbidenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserForbidenServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int userid = Integer.parseInt(request.getParameter("userId"));
		ActiveDao change = new ActiveDao();
		change.forbiden(userid);
		response.sendRedirect("page/user.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
