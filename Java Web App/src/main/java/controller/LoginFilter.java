package controller;

import java.io.IOException; 

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;	
import jakarta.servlet.http.HttpSession;

@WebFilter(urlPatterns={""})
public class LoginFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		HttpSession session = ((HttpServletRequest)request).getSession();
		System.out.print(session.getAttribute("loggedInId"));
		if(session.getAttribute("loggedInId") == null) {
			session.setAttribute("loginError","Do login First!");
			((HttpServletResponse)response).sendRedirect("../View/Login.jsp");
		}
		else {
			chain.doFilter(request, response);
		}
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	
}