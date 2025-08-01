package controller;

import java.io.IOException; 

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logout")
public class Logout extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		session.removeAttribute("loggedInId"); 
 	  	session.removeAttribute("adminEmail");
 	  	try {
			response.sendRedirect("./index.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
