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

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println(request.getParameter("id"));
		int id = Integer.parseInt( request.getParameter("id"));
		
		try {
		      

			ProductService service = new ProductService();
			
			
			Product product =service.findById(id);
			
			System.out.println("product==>"+product);
			
			
			request.setAttribute("product", product);
			RequestDispatcher rd = request.getRequestDispatcher("/productupdate.jsp");
			rd.forward(request, response);
		
		} catch (ServiceException | ValidationException e) {
		
			e.printStackTrace();
		}
		
	}

}
