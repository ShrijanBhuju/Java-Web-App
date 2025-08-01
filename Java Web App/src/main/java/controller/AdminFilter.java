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

@WebFilter(urlPatterns={"/View/AdminPage.jsp", "/View/AddProduct.jsp", "/View/EditProduct.jsp","/manageusers","/View/ManageUsers.jsp","/View/ManageProducts.jsp", "/admin-page"})
public class AdminFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		HttpSession session = ((HttpServletRequest)request).getSession();
		System.out.print(session.getAttribute("adminEmail"));
		if(session.getAttribute("adminEmail") == null) {
			System.out.println("Error Error ");
			System.out.println(session.getAttribute("adminEmail"));
			session.setAttribute("loginError","Do login First!");
			((HttpServletResponse)response).sendRedirect("../View/AdminLogin.jsp");
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