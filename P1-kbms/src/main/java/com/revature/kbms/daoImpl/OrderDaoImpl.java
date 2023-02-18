package com.revature.poms.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.revature.poms.constant.Constant;
import com.revature.poms.dao.OrderDao;
import com.revature.poms.model.Order1;
import com.revature.poms.util.ConnectionFactory;
import com.revature.poms.util.OrderUtility;

public class OrderDaoImpl implements OrderDao {
	private static Connection con;
	private List<Order1> orderList;
	static {
		con = ConnectionFactory.getConnection();	
	}
	public OrderDaoImpl() throws SQLException  {
		getOrderDetailsList();
	}
	private void getOrderDetailsList() throws SQLException {
		orderList = new ArrayList<>();
		try (PreparedStatement stmt = con.prepareStatement(Constant.SELECT_ORDER_QUERY)) {
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Order1 order = new Order1();
				int x = rs.getInt(1);
				OrderedItemDaoImpl orderImpl  = new OrderedItemDaoImpl(x); 
				order.setOrderId(x);
				order.setCustomerName(rs.getString(2));
				order.setCustomerContact(rs.getString(3));
				order.setDeliveryAddress(rs.getString(4));
				order.setTotalPrice(rs.getInt(5));
				order.setEmail(rs.getString(6));
				
				orderList.add(order);
			}
			
		}
	}

	@Override
	public List<Order1> getOrderDetails() throws SQLException {
		
		return orderList;
	}
	@Override
	public int addOrderDetails(Order1 order) throws SQLException {
		try (PreparedStatement preparedStatement = con.prepareStatement(Constant.INSERT_ORDER_QUERY1)) {
			preparedStatement.setString(1, order.getCustomerName());
			preparedStatement.setString(2, order.getCustomerContact());
			preparedStatement.setString(3, order.getDeliveryAddress());
			preparedStatement.setString(5, order.getEmail());
			preparedStatement.setInt(4, order.getTotalPrice());
			
			preparedStatement.executeUpdate();
			return OrderUtility.getLastId(con);
		}
	}
}
