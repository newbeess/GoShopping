package com.elephant.controller;

import com.elephant.model.GoodsBean;
import com.elephant.model.GoodsBeanBO;
import com.elephant.model.MyCartBO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PipedWriter;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 * Created by elephant on 16/7/11.
 */
@WebServlet(name = "shoppingclservlet", urlPatterns = "/shoppingclservlet")
public class ShoppingCLServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter pw = response.getWriter();
		try {
			String type = request.getParameter("type");
			// 从 Session中取出购物车，
			MyCartBO mcb = (MyCartBO) request.getSession().getAttribute("mycart");
			// 处理购买逻辑
			if (type.equals("buy")) {
				// 如果取不出来，创建购物车放进Session
				String goodsId = request.getParameter("goodsId");
				if (mcb == null) {
					mcb = new MyCartBO();
					request.getSession().setAttribute("mycart", mcb);
				}
				// 默认，每次购买一张
				mcb.addGoods(goodsId, "1");
			}
			if (type.equals("delGoods")) {
				// 删除一本书
				String goodsId = request.getParameter("goodsId");
				mcb.removeGoods(goodsId);
			} else if (type.equals("showDetail")) {
				// 处理查看逻辑
				String id = request.getParameter("id");
				GoodsBeanBO gbb = new GoodsBeanBO();
				GoodsBean gb = gbb.getGoodsBean(id);
				request.setAttribute("gb", gb);
				request.getRequestDispatcher("showDetail.jsp").forward(request, response);
			} else if (type.equals("show")) {
				// 右上角购物车链接
			} else if (type.equals("delAll")) {
				// 清空购物车
				mcb.clean();
			} else if (type.equals("updateGoods")) {
				// 修改数量
				String[] goodsIds = request.getParameterValues("goodsId");
				String[] newNums = request.getParameterValues("newNums");
				for (int i = 0; i < goodsIds.length; i++) {
					mcb.upGoods(goodsIds[i], newNums[i]);
				}


			}
			// 取出数据
			ArrayList al = mcb.showMyCart();
			// 传递数据到显示页面
			request.setAttribute("mycart", al);
			// 跳转到页面显示
			request.getRequestDispatcher("showMyCart.jsp").forward(request, response);


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
