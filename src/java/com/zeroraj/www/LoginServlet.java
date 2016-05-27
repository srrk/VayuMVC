package com.zeroraj.www;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.apache.catalina.User;

import com.zeroraj.www.service.LoginService;
import com.zeroraj.www.dto.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* Fetch details from Login Page.*/
		String username,password;
		username = request.getParameter("username");
		password = request.getParameter("password");
		
		/* Process the Login Info with POJO/Backend service */
		LoginService loginservice = new LoginService();
		boolean result = loginservice.authenticate(username, password);
		
		/* Debug stmt.*/
		System.out.println("Value obtained from service = " + result);
		
		/*Process the result and forward to appropriate page.*/
		if (result) { // Login Succeeded 
			/* Sending Result as Object to JSP Viewer */
			User user = loginservice.getUserDetails(username);
			
			/* Hand over the object to "session" */
			//request.getSession().setAttribute("user", user);
			//response.sendRedirect("success.jsp");
			
			/* Hand over the object to Dispatcher, which internally routes*/
			request.setAttribute("user", user);
			RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
			return;
		}
		else {
			response.sendRedirect("relogin.jsp");
			return;
		}
	}

}
