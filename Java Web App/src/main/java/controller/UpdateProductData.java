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

import model.DbConnection;
import model.Product;

/**
 * Servlet implementation class UpdateProductData
 */
@WebServlet("/updateproductData")
@MultipartConfig
public class UpdateProductData extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {			
			String pId=request.getParameter("product_id");
			String pName=request.getParameter("product_name");
			String pQuantity=request.getParameter("product_quantity");
			String pPrice=request.getParameter("product_price");
			String userImagePath="productImage/"+pId+".png";
			
			System.out.println("THis is th apage of update project");
			System.out.print(userImagePath);

			Product product=new Product(pId,pName,pQuantity,pPrice,userImagePath);
			
			Boolean bool=false;
			try {
				bool = new DbConnection().updateProductsData(product);
				System.out.print("THis is th apage of update project"+ bool);

			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			if(bool==true) {
				
				Part image = request.getPart("image");
				
				if(image!=null) {
					
					String imagePath = getServletContext().getInitParameter("imagePath");
					System.out.println();
//					System.out.println("THis is image patha fro web . xml"+imagePath);
					String finalPath = imagePath + userImagePath;
					System.out.println("THis is image patha fro web .xml "+finalPath);

					image.write(finalPath);
					System.out.print("Imaage is added");
				}
				else {	
					System.out.print("Image not added");
				}
			}
			else {
				
				System.out.print("Imaage is not added");
				
			}
			
			response.sendRedirect("manageproducts");
			
//			System.out.println("This is update page");
//			System.out.println(pId);
//			System.out.println(pName);
//			System.out.println(pQuantity);
//			System.out.println(pPrice);
//			System.out.println(userImagePath);
//			System.out.println("This is update page");			
//
//			Part image = request.getPart("image");
//			String imagePath = getServletContext().getInitParameter("productImage");
//			String finalPath = imagePath + userImagePath;
//			image.write(finalPath);
//			
//			String pImagePath=request.getParameter("");
			
	}
}
