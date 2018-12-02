package com.gugu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gugu.dao.LeacotDao;



public class LeaDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LeaDelServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int comid = Integer.parseInt(request.getParameter("comId"));
		LeacotDao delete = new LeacotDao();
		delete.delete(comid);
		
		response.sendRedirect("page/leaDel.jsp");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
