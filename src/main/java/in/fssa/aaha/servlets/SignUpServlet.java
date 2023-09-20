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
import in.fssa.aaha.model.User;
import in.fssa.aaha.service.UserService;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/User/create")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = new User();
		String name = request.getParameter("username");
		String email = request.getParameter("useremail");
		String password = request.getParameter("userpassword");	
		long phonenumber =  Long.parseLong(request.getParameter("usernumber"));
		
		user.setUserName(name);
		user.setEmail(email);
		user.setPassword(password);
		user.setPhoneNumber(phonenumber);
		System.out.println(user);
		UserService userservice = new UserService();
		PrintWriter out = response.getWriter();
		try {

			userservice.createUser(user);
			response.sendRedirect(request.getContextPath() + "/login.jsp");

		} catch (ServiceException | ValidationException e) {

			e.printStackTrace();
			out.println(e.getMessage());

		}

		
	}

}
