package com.revature.poms.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.revature.poms.dao.UserDao;
import com.revature.poms.daoImpl.UserDaoImpl;
import com.revature.poms.model.User;

@WebServlet(urlPatterns = { "/validate" })
public class DoLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 4645721142572801102L;
	private UserDao userDao = new UserDaoImpl();

	public DoLoginServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		User user = null;
		boolean hasError = false;
		String errorString = null;

		if (userName == null || password == null || userName.length() == 0 || password.length() == 0) {
			hasError = true;
			errorString = "Required username and password!";
		} else {

			user = userDao.findUser(userName, password);
			if (user == null) {
				hasError = true;
				errorString = "User Name or password invalid";
			}

		}
		// If error, forward to /WEB-INF/views/index.jsp
		if (hasError) {
			user = new User();
			user.setLoginId(userName);
			user.setPassword(password);

			// Store information in request attribute, before forward.
			request.setAttribute("errorString", errorString);
			request.setAttribute("user", user);

			// Forward to /WEB-INF/views/index.jsp
			getServletContext().getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
		}

		// If no error
		// Store user information in Session
		// And redirect to correct home page.
		else {
			HttpSession session = request.getSession(true);
			session.setAttribute("userIs", user);
			getServletContext().getRequestDispatcher("/WEB-INF/views/home.jsp").forward(request, response);

		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}