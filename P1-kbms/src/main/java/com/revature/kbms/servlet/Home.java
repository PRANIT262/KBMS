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

@WebServlet(urlPatterns = { "/home" })
public class Home extends HttpServlet {
	private static final long serialVersionUID = 4645721142572801102L;
	private UserDao userDao = new UserDaoImpl();

	public Home() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		
		getServletContext().getRequestDispatcher("/WEB-INF/views/order.jsp").forward(request, response);

		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}