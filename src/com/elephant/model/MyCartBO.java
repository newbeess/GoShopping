package com.elephant.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/**
 * 处理与购物相关的业务逻辑
 * Created by elephant on 16/7/11.
 */
public class MyCartBO {
	private Connection con = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	HashMap<String, String> hm = new HashMap<String, String>();
	private float allPrice = 0.0f;

	public float getAllPrice() {
		return this.allPrice;
	}

	/**
	 * 添加货物
	 *
	 * @param goodsId
	 * @param goodsNum
	 */
	public void addGoods(String goodsId, String goodsNum) {
		hm.put(goodsId, goodsNum);
	}


	/**
	 * 删除货物
	 *
	 * @param goodsId
	 */
	public void removeGoods(String goodsId) {
		hm.remove(goodsId);
	}

	/**
	 * 晴空购物车
	 */
	public void clean() {
		hm.clear();
	}

	/**
	 * 修改数量
	 *
	 * @param goodsId
	 * @param goodsNum
	 */
	public void upGoods(String goodsId, String goodsNum) {
		hm.put(goodsId, goodsNum);
	}

	/**
	 * 显示购物车
	 *
	 * @return
	 */
	public ArrayList<GoodsBean> showMyCart() {
		ArrayList<GoodsBean> al = new ArrayList<GoodsBean>();
		try {
			// 定义迭代器
			Iterator<String> iterator = hm.keySet().iterator();
			String sub = "(";
			while (iterator.hasNext()) {
				String goodsId = iterator.next();
				// 判断goodId是否是最后一个
				if (iterator.hasNext()) {
					sub = sub + goodsId + ",";
				} else {
					sub = sub + goodsId;
				}
			}
			sub = sub + ")";
			ConnDB connDB = new ConnDB();
			con = connDB.getCon();
			ps = con.prepareStatement("SELECT * FROM goods WHERE goodsId IN " + sub);
			rs = ps.executeQuery();
			this.allPrice = 0.0f;
			while (rs.next()) {
				GoodsBean gb = new GoodsBean();
				long id = rs.getLong(1);
				gb.setGoodsId(id);
				gb.setGoodsName(rs.getString(2));
				gb.setGoodsIntro(rs.getString(3));
				long price = rs.getLong(4);
				gb.setGoodsPrice(price);
				gb.setGoodsNum(rs.getInt(5));
				gb.setPublisher(rs.getString(6));
				gb.setPhoto(rs.getString(7));
				gb.setType(rs.getString(8));
				al.add(gb);
				this.allPrice = this.allPrice + price * Integer.parseInt(this.getNumById(id + ""));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return al;
	}

	/**
	 * 通过ID号，返回商品数量
	 *
	 * @param id
	 * @return
	 */
	public String getNumById(String id) {
		return hm.get(id);
	}

	/**
	 * 用来关闭数据库链接资源
	 */
	public void close() {
		try {
			if (rs != null) {
				rs.close();
				rs = null;
			}
			if (ps != null) {
				ps.close();
				ps = null;
			}
			if (con != null) {
				con.close();
				con = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
