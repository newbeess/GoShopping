package com.elephant.model;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * 获得数据库 链接
 *
 * Created by elephant on 16/7/8.
 */
public class ConnDB {
	private Connection con = null;

	public Connection getCon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Shopping?","root","root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

}
