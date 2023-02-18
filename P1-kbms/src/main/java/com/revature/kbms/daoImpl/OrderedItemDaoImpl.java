package com.revature.poms.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.revature.poms.constant.Constant;
import com.revature.poms.dao.OrderedItemDao;
import com.revature.poms.model.Order1;
import com.revature.poms.model.OrderProduct;
import com.revature.poms.util.ConnectionFactory;
import com.revature.poms.util.OrderUtility;

public class OrderedItemDaoImpl implements OrderedItemDao {
	private static Connection con;
	private int orderId;
	private static ArrayList<OrderProduct> itemList;
	static {
		itemList  = new ArrayList<>();
		con = ConnectionFactory.getConnection();
	}
	public OrderedItemDaoImpl(int orderId) throws SQLException {
		this.orderId = orderId;
		getOrderedItemList();
		
	}
	
	private void  getOrderedItemList() throws SQLException {
		String query  = Constant.SELECT_ORDERED_ITEM_WHERE_QUERY;
		try(PreparedStatement statement = con.prepareStatement(query+orderId)){
		ResultSet reSet = statement.executeQuery();
		while(reSet.next()) {
			OrderProduct orderProduct = new OrderProduct();
		orderProduct.setProductId(orderId);
		orderProduct.setProductName(reSet.getString(2));
		orderProduct.setProductPrice(Double.valueOf(reSet.getString(3)));
		itemList.add(orderProduct);
		//System.out.println(itemList);
		}
		}
	}
	
	@Override
	public List<OrderProduct> getOrderedItem() throws SQLException {
		return  itemList;
	}

	public void getOrderedItem(OrderProduct item) {
		// TODO Auto-generated method stub
		
	}
	
	
	public void addOrderedProducts(OrderProduct item) throws SQLException {
		try (PreparedStatement preparedStatement = con.prepareStatement(Constant.INSERT_ORDERED_PRODUCTS_QUERY)) {
			preparedStatement.setInt(1, item.getProductId());
			preparedStatement.setString(2, item.getProductName());
			preparedStatement.setDouble(3, item.getProductPrice());
			
			
			preparedStatement.executeUpdate();
			
		}
	}
	
	
	
	
	
	
	
}
