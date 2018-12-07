package com.gugu.servlet;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginFilter implements Filter {

	@Override
	public void destroy() {
		

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {

		HttpServletRequest request=(HttpServletRequest) arg0;
        HttpServletResponse response=(HttpServletResponse) arg1;
        HttpSession session=request.getSession();
        
        
        String uid= (String) session.getAttribute("rights");
        
        if(uid == "1"){//已经登录
            arg2.doFilter(request, response);//放行，递交给下一个过滤器
            
        }else if(uid == null){
            response.sendRedirect("fall4.jsp");
        }else {
        	response.sendRedirect("fall5.jsp");
        }
	}
	

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}

}
