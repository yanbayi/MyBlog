package com.gugu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gugu.dao.WisDelDao;


@WebServlet("/WhiDel")
public class WhiDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public WhiDelServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int noteId = Integer.parseInt(request.getParameter("noteId"));
		//System.out.println(noteId);
		WisDelDao delete = new WisDelDao();
		delete.del(noteId);
		
		response.sendRedirect("page/whisper/manage.jsp");
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
