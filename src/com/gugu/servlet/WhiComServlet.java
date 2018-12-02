package com.gugu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gugu.dao.WisUploadDao;
import com.gugu.pojo.GgNoteCom;


@WebServlet("/WhiCom")
public class WhiComServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public WhiComServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		String username=(String)session.getAttribute("userName");
		String Rights =(String)session.getAttribute("rights");
		int noteid=Integer.parseInt(request.getParameter("noteId"));
		String notecomcontent=request.getParameter("noteComContent");
		
		if(Rights == "1"||Rights =="2") {
			GgNoteCom notecom = new GgNoteCom();
			notecom.setNoteComContent(notecomcontent);
			notecom.setNoteComName(username);
			notecom.setNoteId(noteid);	
			WisUploadDao addCom = new WisUploadDao();
			addCom.addcom(notecom);
			response.sendRedirect("whisper.jsp");
		}else if(Rights == "3"){
		
			response.sendRedirect("fall3.jsp");
		}else if(Rights ==""||Rights == null) {
			response.sendRedirect("fall4.jsp");
		}else {
			response.sendRedirect("fall4.jsp");
		}
		
		
	}

}
