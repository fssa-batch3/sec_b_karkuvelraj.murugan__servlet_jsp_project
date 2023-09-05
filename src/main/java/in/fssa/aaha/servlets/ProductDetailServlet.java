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
import in.fssa.aaha.model.Product;
import in.fssa.aaha.service.ProductService;

/**
 * Servlet implementation class ListProductDetailServlet
 */
@WebServlet("/product/details")
public class ProductDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ProductService productService = new ProductService();
		PrintWriter out = response.getWriter();

		int productId = Integer.parseInt(request.getParameter("id"));

		Product product = new Product();

		try {
			product = productService.findById(productId);
			request.setAttribute("productDetails", product);
//			out.println(product);
			RequestDispatcher rd = request.getRequestDispatcher("/productdetails.jsp");
			rd.forward(request, response);
		} catch (ServiceException e) {
			e.printStackTrace();
			throw new ServletException(e);
		} catch (ValidationException e) {
			e.printStackTrace();
			throw new ServletException(e);
		}

	}

}
