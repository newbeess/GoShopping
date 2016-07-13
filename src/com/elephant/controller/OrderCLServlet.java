package com.elephant.controller;

import com.elephant.model.MyCartBO;
import com.elephant.model.OrderBeanCL;
import com.elephant.model.OrderUserBean;
import com.elephant.model.UserBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 把订单写入Order和OrderDetail两个表中
 * <p>
 * Created by elephant on 16/7/12.
 */
@WebServlet(name = "orderclservlet", urlPatterns = "/orderclservlet")
public class OrderCLServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter pw = response.getWriter();

		try {
			MyCartBO mcb = (MyCartBO) request.getSession().getAttribute("mycart");
			String userId = ((UserBean) request.getSession().getAttribute("userInfo")).getUserId() + "";
			OrderBeanCL obc = new OrderBeanCL();
			OrderUserBean oub=obc.addOrder(mcb, userId);
			if (oub!=null) {
				// 添加成功
				request.setAttribute("orderDetail",oub);
				request.getRequestDispatcher("shopping4.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("shopping3.jsp").forward(request, response);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			this.doPost(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
