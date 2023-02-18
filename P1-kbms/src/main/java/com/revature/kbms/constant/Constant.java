package com.revature.poms.constant;

public class Constant {

//	public static final String INSERT_USER = "INSERT INTO GD_LOGIN VALUES(?,?,?)";
//	public static final String UPDATE_USER = "UPDATE GD_LOGIN SET LOGIN_ID=?,PASSWORD=?,ROLE=? WHERE  LOGIN_ID=?";
//	public static final String DELETE_USER = "DELETE FROM GD_LOGIN WHERE LOGIN_ID=?";
	public static final String SELECT_USER = "SELECT * FROM user WHERE LOGIN_ID=? AND PASSWORD=?";
	public static final String SELECT_USER_BY_ID = "SELECT * FROM user WHERE LOGIN_ID=?";
	public static final String SELECT_ALL_Product = "SELECT PRODUCT_ID,PRODUCT_NAME,PRICE_PER_UNIT FROM PRODUCT";

	public static final String INSERT_ORDER_QUERY1 	= "Insert into order1(customer_name,customer_contact,delivery_address,totalprice,email) values(?,?,?,?,?)";
	public static final String SELECT_ORDER_QUERY 	= "Select * from `order1`";
	public static final String SELECT_ORDERED_ITEM_WHERE_QUERY = "select * from order_product where order_id =";
	public static final String INSERT_ORDERED_PRODUCTS_QUERY="insert into order_product(order_id,product_name,price_per_unit) values(?,?,?)";
	public static final String SELECT_ORDER_LAST_INDEX_QUERY = "Select last_insert_id() from `order1`";

}
