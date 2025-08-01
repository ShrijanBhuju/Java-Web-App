package controller;

import java.io.IOException;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import model.DbConnection;

@WebServlet("/admin-login")
public class AdminLogin extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		DbConnection con = new DbConnection();
		ResultSet record = con.adminLogin(email, password);
		
		if(record != null) {
			HttpSession session = request.getSession();
			session.removeAttribute("loggedInId");
			session.setAttribute("loggedInId", email);
			session.setAttribute("adminEmail", email);
			session.setMaxInactiveInterval(5*60);
			
			response.sendRedirect("./admin-page");
		}
		else {
			response.setContentType("text/html");
			response.sendRedirect("View/AdminLogin.jsp");
//			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
//			request.setAttribute("LoginMessage", "Failed");
//			rd.forward(request, response);
		}
	}
}
