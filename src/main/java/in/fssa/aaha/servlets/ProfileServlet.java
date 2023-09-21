package in.fssa.aaha.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.aaha.exception.DAOException;
import in.fssa.aaha.exception.ServiceException;
import in.fssa.aaha.exception.ValidationException;
import in.fssa.aaha.model.User;
import in.fssa.aaha.service.UserService;

@WebServlet("/Profile")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserService userService = new UserService();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		int userId = (int) session.getAttribute("userId");
		try {
			User user = userService.findById(userId);
            System.out.println(user);
			request.setAttribute("user", user);
			RequestDispatcher rd = request.getRequestDispatcher("/profile.jsp");
			rd.forward(request, response);

		} catch (ServiceException | ValidationException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}
}