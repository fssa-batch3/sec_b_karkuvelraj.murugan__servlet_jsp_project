package in.fssa.aaha.servlets;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.aaha.exception.ServiceException;
import in.fssa.aaha.exception.ValidationException;
import in.fssa.aaha.service.UserService;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/login")
public class UserSigninServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		System.out.println("email" + email);
		String password = request.getParameter("password");
		System.out.println(password);

		UserService userService = new UserService();

		int userId;
		try {
			userId = userService.logIn(email, password);

			if (userId > 0) {
				request.getSession().setAttribute("userId", userId);
				
				response.sendRedirect(request.getContextPath() + "/profile.jsp");
			}
//			} else {
//				String errorMessage = "?error=" + "Invalid email or password";
//				response.sendRedirect(request.getContextPath() + "/login" + errorMessage);
//			}

		} catch (ValidationException | ServiceException e) {
//			String errorMessage = "?error=" + e.getMessage();
			response.sendRedirect(request.getContextPath() + "/login.jsp" );
			e.printStackTrace();
		}
	}
}

