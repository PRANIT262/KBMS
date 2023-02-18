package com.revature.poms.model;

public class Order1 {

	private int orderId;
	private String customerName;
	private String customerContact;
	private String deliveryAddress;
	private int totalPrice;
	private String email;
	
	
	
public Order1(int orderId, String customerName, String customerContact, String deliveryAddress, int totalPrice,
			String email) {
		super();
		this.orderId = orderId;
		this.customerName = customerName;
		this.customerContact = customerContact;
		this.deliveryAddress = deliveryAddress;
		this.totalPrice = totalPrice;
		this.email = email;
	}
	public Order1() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getOrderId() {
		return orderId;
	}
	@Override
	public String toString() {
		return "Order1 [orderId=" + orderId + ", customerName=" + customerName + ", customerContact=" + customerContact
				+ ", deliveryAddress=" + deliveryAddress + ", totalPrice=" + totalPrice + ", email=" + email + "]";
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerContact() {
		return customerContact;
	}
	public void setCustomerContact(String customerContact) {
		this.customerContact = customerContact;
	}
	public String getDeliveryAddress() {
		return deliveryAddress;
	}
	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
		}