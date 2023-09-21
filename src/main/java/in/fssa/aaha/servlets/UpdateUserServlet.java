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
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/user_dashboard/profile/update")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			//Instance
			User user = new User();
			
			//Mobile number
			long phonenumber =  Long.parseLong(request.getParameter("number"));
			user.setPhoneNumber(phonenumber);
		
			//Password
//			user.setPassword(request.getParameter("password"));
			
			//FirstName
			user.setUserName(request.getParameter("name"));
			
			UserService userService = new UserService();
			
			String idParams = request.getParameter("userId");
			
			int id = Integer.parseInt(idParams);
			
			userService.updateUser(user);
			//System.out.println(id);
			response.sendRedirect("/globalfuncityweb/user_dashboard/profile");
			
	   }  catch (ValidationException e) {
			e.printStackTrace();
			PrintWriter consoleOutput = new PrintWriter(System.out);
			consoleOutput.println(e.getMessage());
			
		} catch (ServiceException e) {
			e.printStackTrace();
			PrintWriter consoleOutput = new PrintWriter(System.out);
			consoleOutput.println(e.getMessage());
		} 
		 catch (NumberFormatException e) {
			e.printStackTrace();
			PrintWriter consoleOutput = new PrintWriter(System.out);
			consoleOutput.println(e.getMessage());
	    }

}
}