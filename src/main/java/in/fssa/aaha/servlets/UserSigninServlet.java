package in.fssa.aaha.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.aaha.dao.UserDAO;
import in.fssa.aaha.exception.DAOException;
import in.fssa.aaha.exception.ServiceException;
import in.fssa.aaha.exception.ValidationException;
import in.fssa.aaha.model.User;
import in.fssa.aaha.model.UserEntity;
import in.fssa.aaha.service.UserService;
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
		String password = request.getParameter("password");

		UserService userService = new UserService();

		int userId;
		try {
			userId = userService.logIn(email, password);

			if (userId > 0) {
				request.getSession().setAttribute("userId", userId);
				
				  System.out.print(userId);
				 
				response.sendRedirect(request.getContextPath() + "/index.jsp");// inga index page ku ponum
			} else {
				throw new ValidationException("email and password not validate");
			}

		} catch (ValidationException | ServiceException e) {
//			String errorMessage = "?error=" + e.getMessage();
			response.sendRedirect(request.getContextPath() + "/login.jsp");
			e.printStackTrace();
		}
	}
}
