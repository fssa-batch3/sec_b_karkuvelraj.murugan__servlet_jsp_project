package in.fssa.aaha.servlets;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class ListAllProductServletUser
 */
@WebServlet("/products")
public class ListAllProductServletUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductService productService = new ProductService();
		List<Product> ProductList;
		try {

			ProductList = productService.ListAllProducts();
            request.setAttribute("product", ProductList);		
			RequestDispatcher requestDispatch = request.getRequestDispatcher("/productlist.jsp");
			requestDispatch.forward(request, response);
		} catch (ServiceException | ValidationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
