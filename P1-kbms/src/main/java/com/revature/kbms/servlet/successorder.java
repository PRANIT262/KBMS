package com.revature.poms.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revature.poms.daoImpl.OrderDaoImpl;
import com.revature.poms.daoImpl.OrderedItemDaoImpl;
import com.revature.poms.model.Order1;
import com.revature.poms.model.OrderProduct;

/**
 * Servlet implementation class PlcaeOrderServlet
 */
@WebServlet("/successorder")
public class successorder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int totalPrice = 0;
		System.out.println(request.getParameter("name"));
		
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mobileNum = request.getParameter("phone");
		String address = request.getParameter("address");
		String[] values = request.getParameterValues("2");

		for (String value : values)
			totalPrice += Integer.parseInt(value.split(" ")[1]);
		
		
		Order1 order = new Order1();
		//Order1 o=new Order1();
		order.setCustomerName(name);
		order.setEmail(email);
		order.setCustomerContact(mobileNum);
		order.setDeliveryAddress(address);
		order.setTotalPrice(totalPrice);
		
		
		
		int orderId = -1;
		
		//System.out.println(o.getCustomerName());
		try {
			OrderDaoImpl impl = new OrderDaoImpl();
			orderId = impl.addOrderDetails(order);
			System.out.println(orderId);
			OrderedItemDaoImpl imItemDaoImpl = new OrderedItemDaoImpl(orderId);

			for (String value : values) {
				OrderProduct item = new OrderProduct();
				item.setProductId(orderId);
				item.setProductName(value.split(" ")[0]);
				item.setProductPrice(Integer.parseInt(value.split(" ")[1]));
				imItemDaoImpl.addOrderedProducts(item);
				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/WEB-INF/views/succesorder.jsp").include(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
