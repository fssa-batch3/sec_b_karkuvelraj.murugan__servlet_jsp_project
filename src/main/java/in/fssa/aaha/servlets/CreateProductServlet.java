package in.fssa.aaha.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.aaha.exception.ServiceException;
import in.fssa.aaha.exception.ValidationException;
import in.fssa.aaha.model.Price;
import in.fssa.aaha.model.Product;
import in.fssa.aaha.service.ProductService;

@WebServlet("/product/create")
public class CreateProductServlet  extends HttpServlet {
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Product product = new Product();
		String name = request.getParameter("name");
		String description = request.getParameter("product_Description");
		int productPrice = Integer.parseInt(request.getParameter("price"));
		int category = Integer.parseInt(request.getParameter("product_category"));
//		String image_url = request.getParameter("image_url");
//		int price = Integer.parseInt(request.getParameter("price"));

		product.setName(name);
		product.setDescription(description);
		product.setCategory_id(category);
		
		Price price = new Price();
		price.setPrice(productPrice);

		product.setPrice(price);
	
		ProductService productService = new ProductService();
		PrintWriter out = response.getWriter();

		try {

			productService.create(product);
			response.sendRedirect(request.getContextPath() + "/product");

		} catch (ServiceException | ValidationException e) {

			e.printStackTrace();
			out.println(e.getMessage());

		}
	}
}









































//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import in.fssa.aaha.model.Product;
//import in.fssa.aaha.model.Price;
//import in.fssa.aaha.service.PriceService;
//import in.fssa.aaha.service.ProductService;
///**
// * Servlet implementation class create_product
// */
//@WebServlet("/product/create")
//public class CreateProductServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//  
//
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Product product = new Product();
//		
//		String productName = request.getParameter("productName");
//		String productDescription = request.getParameter("productDescription");
//		int productPrice = Integer.parseInt(request.getParameter("productPrice"));
////		System.out.println("Product create");
//	
//		product.setName(productName);
//		product.setDescription(productDescription);
//		Price price = new Price();
//		price.setPrice(productPrice);
//		product.setPrice(price);
//		
//		
//		ProductService productService = new ProductService();
//
//
//		try {
//			productService.create(product);
////			pr.create(product);
//			response.sendRedirect(request.getContextPath()+"/product");
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//			throw new RuntimeException(e.getMessage());
//		}
//	}
//
//}