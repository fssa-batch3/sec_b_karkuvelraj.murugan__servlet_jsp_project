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

@WebServlet("/product")
public class ListAllProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String category = request.getParameter("category");

		ProductService productService = new ProductService();
		try {
			List<Product> productList;
			if (category != null) {
				int categoryId = Integer.parseInt(request.getParameter("category"));

				productList = productService.listAllTheProductsByCategoryId(categoryId);

				for (Product product : productList) {
					System.out.println(product);
				}
			} else {
				productList = productService.ListAllProducts();
			}
			request.setAttribute("product", productList);
			RequestDispatcher requestDispatch = request.getRequestDispatcher("/productlistuser.jsp");
			requestDispatch.forward(request, response);
		} catch (ServiceException | ValidationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}