package com.gugu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gugu.dao.WisDelDao;


@WebServlet("/WhiDelCom")
public class WhiDelComServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public WhiDelComServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int notecomId = Integer.parseInt(request.getParameter("noteComId"));
		WisDelDao delete = new WisDelDao();
		delete.delCom(notecomId);
		/*System.out.println(notecomId);*/
		response.sendRedirect("page/whisper/comment.jsp");	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int notecomId = Integer.parseInt(request.getParameter("noteComId"));
		WisDelDao delete = new WisDelDao();
		delete.delCom(notecomId);
		/*System.out.println(notecomId);*/
		response.sendRedirect("page/whisper/comment.jsp");	
		
	}
}
