package in.fssa.aaha.servlets;
import java.io.IOException;

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
 * Servlet implementation class EditProductServlet
 */

@WebServlet("/product/edit")
public class EditProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt( request.getParameter("product_id") );
		
		try {
			Product product = new ProductService().findById(id);
			request.setAttribute("product", product);
			RequestDispatcher rd = request.getRequestDispatcher("/productupdate.jsp");
			rd.forward(request, response);
		
		} catch (ServiceException | ValidationException e) {
		
			e.printStackTrace();
		}
		
	}

}
