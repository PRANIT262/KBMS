package com.revature.poms.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revature.poms.daoImpl.OrderDaoImpl;

/**
 * Servlet implementation class GetOrderDetailServler
 */
@WebServlet("/getDetails")
public class GetOrderDetailServler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetOrderDetailServler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			OrderDaoImpl impl = new OrderDaoImpl();
			request.setAttribute("ORDER_DETAIL", impl.getOrderDetails());
			request.getRequestDispatcher("/WEB-INF/views/orderslist.jsp").include(request, response);
//			request.getRequestDispatcher("/WEB-INF/views/order.jsp").include(request, response);

		}catch (SQLException|ServletException|IOException e) {
			
			
			response.getWriter().print(e.getMessage());
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
