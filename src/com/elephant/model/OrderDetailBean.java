package com.elephant.model;

/**
 * Created by elephant on 16/7/12.
 */
public class OrderDetailBean {
	private long ordersId;
	private long goodsId;
	private int nums;

	public int getNums() {
		return nums;
	}

	public void setNums(int nums) {
		this.nums = nums;
	}

	public long getOrdersId() {
		return ordersId;
	}

	public void setOrdersId(long ordersId) {
		this.ordersId = ordersId;
	}

	public long getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(long goodsId) {
		this.goodsId = goodsId;
	}


}
