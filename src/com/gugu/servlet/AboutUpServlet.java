package com.gugu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gugu.dao.AboutDao;
import com.gugu.pojo.GgUser;


public class AboutUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AboutUpServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		Integer age=20;
		//String age = request.getParameter("age");
		
		if(!"".equals(request.getParameter("age"))&&request.getParameter("age")!=null){
		    age = Integer.parseInt(request.getParameter("age"));
		 
		    }else {
		    	age =20;
		    }
		
		
		
		String sex = request.getParameter("gender");
		String content = request.getParameter("content");
		
		GgUser user = new GgUser();
		
		user.setUserHobby(content);
		user.setUserSex(sex);
		user.setUserAge(age);
		AboutDao change = new AboutDao();
		change.updateUserInfo(user);
		
		response.sendRedirect("page/done.jsp");
		
	}

}
