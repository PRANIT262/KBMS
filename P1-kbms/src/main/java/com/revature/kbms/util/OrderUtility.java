package com.revature.poms.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Comparator;
import java.util.List;

import com.mysql.cj.x.protobuf.MysqlxCrud.Order;
import com.revature.poms.constant.Constant;
import com.revature.poms.model.Order1;



public class OrderUtility {
	private  OrderUtility() {
	}
	public static void sortOrderByName(List<Order1> list) {
		list.sort(new Comparator<Order1>() {
			public int compare(Order1 o1,  Order1 o2) {
				return o1.getCustomerName().compareToIgnoreCase(o2.getCustomerName());
			}
		});
	}
//	public static void sortOrderByDate(List<CancelOrder> list) {
//		list.sort(new Comparator<CancelOrder>() {
//			public int compare(CancelOrder o1, CancelOrder o2) {
//				return o1.getDate().compareTo(o2.getDate());
//			}
//		});	
//	}
	
	
	public static int getLastId(Connection con) throws SQLException {
		int id = 0;
		PreparedStatement preStatement = con.prepareStatement(Constant.SELECT_ORDER_LAST_INDEX_QUERY);
		ResultSet rs = preStatement.executeQuery();
		rs.next();
		id = Integer.valueOf(rs.getString(1));
		return id;
	}
	
	}
