package in.fssa.aaha.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.aaha.exception.ServiceException;
import in.fssa.aaha.exception.ValidationException;
import in.fssa.aaha.model.User;
import in.fssa.aaha.service.UserService;

/**
 * Servlet implementation class EditUserServlet
 */
@WebServlet("/edit/profile")
public class EditUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer id = (Integer) request.getSession().getAttribute("userId");
		try {
			User userDetails = new UserService().findById(id);
			request.setAttribute("userDetail", userDetails);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/profile_details.jsp");
			dispatcher.forward(request, response);
		} catch (ServiceException | ValidationException e) {
			e.printStackTrace();
			throw new ServletException(e);
		}

	}

}
