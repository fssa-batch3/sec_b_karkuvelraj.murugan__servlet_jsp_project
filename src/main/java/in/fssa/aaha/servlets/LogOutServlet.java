package in.fssa.aaha.servlets;

import java.io.IOException;
import java.lang.System.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/logout")
public class LogOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);

		if (session != null) {

			session.removeAttribute("userId");
			System.out.println("Existing Session ID:" + session.getId());

			session.invalidate();
		} else {
			System.out.println("No Session Exists");
		}

		response.sendRedirect(request.getContextPath() + "/index.jsp");
	}

}
