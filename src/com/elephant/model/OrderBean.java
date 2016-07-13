package com.elephant.model;

/**
 * 和 Order表对应
 * Created by elephant on 16/7/12.
 */
public class OrderBean {
	private long orderId;
	private long userId;

	private String orderDate;
	private String payMode;
	private String isPayed;
	private float totalPrice;

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public long getOrderId() {
		return orderId;
	}

	public void setOrderId(long orderId) {
		this.orderId = orderId;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getPayMode() {
		return payMode;
	}

	public void setPayMode(String payMode) {
		this.payMode = payMode;
	}

	public String getIsPayed() {
		return isPayed;
	}

	public void setIsPayed(String isPayed) {
		this.isPayed = isPayed;
	}

	public float getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}

}
