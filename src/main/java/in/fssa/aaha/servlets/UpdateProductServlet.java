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

/**
 * Servlet implementation class UpdateProductServlet
 */

@WebServlet("/product/update")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int productId = Integer.parseInt(request.getParameter("id"));
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
		
//		int priceValue = price.getPrice();
//		product.setPrice(priceValue);
	
		ProductService productService = new ProductService();
		PrintWriter out = response.getWriter();

		
		try {
			productService.update(productId, product);
			out.println("Product updated successfully");
			response.sendRedirect(request.getContextPath() + "/");
			
		} catch (ServiceException e) {
			e.printStackTrace();
			out.println(e.getMessage());
			throw new ServletException(e);
		} catch (ValidationException e) {
			e.printStackTrace();
			out.println(e.getMessage());
			throw new ServletException(e);
		}

	}

}
