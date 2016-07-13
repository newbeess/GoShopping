package com.elephant.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Created by elephant on 16/7/11.
 */
public class UserBeanCL {
	private Connection con = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;


	/**
	 * 通过用户名，获得用户信息
	 *
	 * @param name
	 * @return
	 */
	public UserBean getUBbyName(String name) {
		UserBean ub = new UserBean();
		try {
			ConnDB connDB = new ConnDB();
			con = connDB.getCon();
			ps = con.prepareStatement("SELECT * FROM users WHERE username=?");
			ps.setString(1, name);
			rs = ps.executeQuery();
			if (rs.next()){
				ub.setUserId(rs.getInt(1));
				ub.setUserName(rs.getString(2));
				ub.setRealName(rs.getString(3));
				ub.setPassword(rs.getString(4));
				ub.setEmail(rs.getString(5));
				ub.setPhone(rs.getString(6));
				ub.setAddress(rs.getString(7));
				ub.setPosrcode(rs.getString(8));
				ub.setGrade(rs.getInt(9));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return ub;
	}

	/**
	 * 验证用户
	 *
	 * @param name
	 * @param password
	 * @return
	 */
	public boolean checkUser(String name, String password) {
		boolean flag = false;
		try {
			ConnDB connDB = new ConnDB();
			con = connDB.getCon();
			ps = con.prepareStatement("SELECT passwd FROM users WHERE username=?");
			ps.setString(1, name);
			rs = ps.executeQuery();
			if (rs.next()) {
				String passwordSQL = rs.getString(1);
				if (password.equals(passwordSQL)) {
					flag = true;
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return flag;
	}

	/**
	 * 用户注册
	 *
	 * @param name
	 * @param realname
	 * @param password
	 * @param mail
	 * @param address
	 * @param phone
	 * @param postcode
	 * @return
	 */
	public boolean userSignUp(String id, String name, String realname, String password, String mail, String address, String phone, String postcode) {
		boolean flag = false;
		try {
			ConnDB connDB = new ConnDB();
			con = connDB.getCon();
			ps = con.prepareStatement("INSERT INTO users (username, realname, passwd, email, phone, address, postcode,userid,grade) VALUES (?,?,?,?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, realname);
			ps.setString(3, password);
			ps.setString(4, mail);
			ps.setString(5, phone);
			ps.setString(6, address);
			ps.setString(7, postcode);
			ps.setString(8, id);
			ps.setInt(9, 2);
			int num = ps.executeUpdate();
			if (num == 1) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return flag;
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
