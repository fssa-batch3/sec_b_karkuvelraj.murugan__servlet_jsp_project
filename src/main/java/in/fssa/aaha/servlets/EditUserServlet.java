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
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int userId = (Integer) request.getSession().getAttribute("userId");

		 UserService userService = new UserService();
	        try {
	        	User user = userService.findById(userId);
	        	if(user!= null) {
				request.setAttribute("user", user);
				RequestDispatcher rd = request.getRequestDispatcher("/UserUpdate.jsp");
				rd.forward(request, response);
	        	} else {
	        		response.sendError(HttpServletResponse.SC_NOT_FOUND, "USER NOT FOUND");
	        	}
			} catch (NumberFormatException | ValidationException | ServiceException e) {
				e.printStackTrace();
			} 
	  

	
		
	}
}
