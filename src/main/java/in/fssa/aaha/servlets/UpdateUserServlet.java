 package in.fssa.aaha.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.System.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.aaha.exception.ServiceException;
import in.fssa.aaha.exception.ValidationException;
import in.fssa.aaha.model.User;
import in.fssa.aaha.service.UserService;

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/updateprofile")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String loggedUserUniqueEmail = (String) request.getSession().getAttribute("LOGGEDUSER");
		try {
			User userDetails = new UserService().findByEmail(loggedUserUniqueEmail);
			int userId = userDetails.getId();
			String name = request.getParameter("name");
			long phoneNumber = Long.parseLong(request.getParameter("phone"));

			UserService userService = new UserService();
			User newUser = new User();
			PrintWriter out = response.getWriter();
			newUser.setUserName(name);
			newUser.setPhoneNumber(phoneNumber);
		
			userService.updateUser(newUser);

			out.println("User updated successfully");
			response.sendRedirect(request.getContextPath() + "/profile.jsp");
		} catch (ServiceException | ValidationException e) {
			e.printStackTrace();
			throw new ServletException(e);
		}
	}

}