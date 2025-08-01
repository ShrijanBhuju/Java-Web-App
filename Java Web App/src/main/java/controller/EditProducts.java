package controller;

import java.io.IOException;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import model.DbConnection;
import model.Product;

/**
 * Servlet implementation class EditProducts
 */
@WebServlet("/editproducts")
public class EditProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.print("THis is service of edit product");
		String id=request.getParameter("id");
		DbConnection conn=new DbConnection();
		Product product= conn.fetchOneRow(id);
		
		request.setAttribute("productDetails",product);
		RequestDispatcher rd = request.getRequestDispatcher("View/EditProducts.jsp");
		rd.forward(request, response);
	}

}
