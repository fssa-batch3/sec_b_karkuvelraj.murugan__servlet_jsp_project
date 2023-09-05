package in.fssa.aaha.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.aaha.exception.ServiceException;
import in.fssa.aaha.exception.ValidationException;
import in.fssa.aaha.service.ProductService;

/**
 * Servlet implementation class DeleteProductServlet
 */
@WebServlet("/product/delete")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productId =  Integer.parseInt(request.getParameter("id"));
		ProductService productService = new ProductService();
		PrintWriter out = response.getWriter();
		
		try {
			productService.delete(productId);
			//out.println("Product Deleted Successfully");
			response.sendRedirect(request.getContextPath() + "/product");
			
		}catch (ServiceException e) {
			e.printStackTrace();
			throw new ServletException(e.getMessage());
		} catch (ValidationException e) {
			e.printStackTrace();
			throw new ServletException(e.getMessage());
		}
		
	}

}