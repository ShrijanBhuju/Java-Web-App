package controller;

import java.io.IOException; 

import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

//import model.AESEncryption;
import model.DbConnection;
import model.Product;

@WebServlet("/addcontact")
@MultipartConfig
public class AddContacts extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String contact = request.getParameter("contact");
		String message = request.getParameter("message");

		DbConnection con = new DbConnection();

		String res = con.addContact(contact,message);

		System.out.println("Error is ;"+res);

		response.sendRedirect("./");
	}
}