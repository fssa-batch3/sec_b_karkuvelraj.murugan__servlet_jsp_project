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
import in.fssa.aaha.service.ProductService;

/**
 * Servlet implementation class FindByIdServlet
 */
@WebServlet("/FindProductById")
public class ProductFindByIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ProductService productService = new ProductService();
		PrintWriter out = response.getWriter();
		String userId = request.getParameter("id");

		if (userId == null) {
			out.println("Id is Mandatory");
		} else if (userId == "") {
			out.println("Id cannot be empty");
		} else {

			int id = Integer.parseInt(userId);

			try {
				out.println(productService.findById(id));
			} catch (ServiceException e) {

				e.printStackTrace();
			} catch (ValidationException e) {

				e.printStackTrace();
			}
		}

	}

}