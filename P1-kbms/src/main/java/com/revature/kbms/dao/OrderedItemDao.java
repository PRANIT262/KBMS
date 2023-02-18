package com.revature.poms.dao;

import java.sql.SQLException;
import java.util.List;

import com.revature.poms.model.OrderProduct;
import com.revature.poms.model.Product;

public interface OrderedItemDao {
	public List<OrderProduct> getOrderedItem() throws SQLException;
	
}
