<%@ page import="com.elephant.model.GoodsBeanBO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.elephant.model.GoodsBean" %>
<%--
  Created by IntelliJ IDEA.
  User: elephant
  Date: 16/7/8
  Time: 下午3:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int pageNow = 1;
    String pageNow_temp = (String) request.getAttribute("pageNow");
    GoodsBeanBO gbbo = new GoodsBeanBO();
    if (pageNow_temp != null) {
        pageNow = Integer.parseInt(pageNow_temp);
    }
    ArrayList al = gbbo.getGoodsByPage(6, pageNow);

    // 最后一页，若显示不全，用荷花图补充上
    if (al.size() < 6) {
        for (int m = al.size(); m < 6; m++) {
            GoodsBean gb = new GoodsBean();
            gb = new GoodsBean();
            gb.setGoodsId(0);
            gb.setGoodsName("荷花");
            gb.setPhoto("none.jpg");
            gb.setGoodsIntro("没有书了");
            gb.setGoodsPrice(0.0f);
            al.add(m, gb);
        }
    }
    // 得到共有多少页
    int pageCount = gbbo.getPageCount(6);
%>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="abc" valign="top">
    <%--right table第一行--%>
    <tr>
        <td colspan="3" align="left"><img src="images/untitled.bmp"/></td>
    </tr>
    <%--right table第二行--%>
    <%
        for (int i = 0; i < 2; i++) {

    %>
    <tr>
        <%
            //取出三个
            for (int j = 0; j < 3; j++) {
                GoodsBean gb = (GoodsBean) al.get(i * 3 + j);

        %>
        <td width="33%" height="174" align="center">
            <table class="abc" width="100%" height="170" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="32%" rowspan="3"><img src="images/<%=gb.getPhoto()%>" width="112" height="112"/></td>
                    <td width="68%" height="51">&nbsp;</td>
                </tr>
                <tr>
                    <td height="28" align="left" valign="top"><a
                            href="showdetailservlet?type=showdetail&id=<%=gb.getGoodsId()%>"><%=gb.getGoodsName()%>
                    </a></td>
                </tr>
                <tr>
                    <td height="27" align="left" valign="top">价格: <%=gb.getGoodsPrice()%>
                    </td>
                </tr>
                <tr>
                    <td height="56" colspan="2" align="left" valign="top">简单介绍：<%=gb.getGoodsIntro()%>
                    </td>
                </tr>
            </table>
        </td>
        <%
            }
        %>
    </tr>


    <%
        }
    %>
    <tr>
        <td colspan="3" height="10" align="center" class="navi"></td>
    </tr>
    <%--right table第四行--%>


    <tr>
        <td colspan="3" align="center">
            <%
                for (int k = 1; k <= pageCount; k++) {
            %>
            <a href="showdetailservlet?type=fenye&pageNow=<%=k%>"><%=k%>
            </a>
            &nbsp; &nbsp;
            <%

                }
            %>

        </td>
    </tr>

</table>
