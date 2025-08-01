package controller;

import java.io.IOException; 
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import model.DbConnection;

/**
 * Servlet implementation class ViewContacts
 */
@WebServlet("/view-contacts")
public class ViewContacts extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response) {
		DbConnection con = new DbConnection();
		ArrayList<model.Contacts> order=con.fetchContactList();
		for(model.Contacts neworder:order) {
		System.out.println(neworder.getId()+" "+neworder.getContact()+" "+neworder.getMessage());
		}
		request.setAttribute("contactList", order);
		RequestDispatcher rd= request.getRequestDispatcher("View/Contacts.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}

}
