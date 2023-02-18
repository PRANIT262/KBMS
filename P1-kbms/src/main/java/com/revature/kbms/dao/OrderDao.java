package com.revature.poms.dao;

import java.sql.SQLException;
import java.util.List;
import com.revature.poms.model.Order1;
public interface OrderDao {
	public int addOrderDetails(Order1 order) throws SQLException;
	public List<Order1> getOrderDetails() throws SQLException;
}
