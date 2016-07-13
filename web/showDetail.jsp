<%@ page import="com.elephant.model.GoodsBean" %>
<%--
  Created by IntelliJ IDEA.
  User: elephant
  Date: 16/7/8
  Time: 下午10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%
    // 取出要显示的信息
    GoodsBean gb = (GoodsBean) request.getAttribute("gb");
%>
<html>
<head>
    <base href="">

    <title>电影详情</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <link rel="stylesheet" type="text/css" href="css/my.css">
    <script type="text/javascript">
        <!--
        function goHall() {
            // 默认，打开新页面
            window.open("index.jsp", "_self");
        }
        // 响应点击购买
        function addGoods(goodsId) {
            // 向 ShoppingCLServlet 发出请求
            window.open("shoppingclservlet?type=buy&goodsId=" + goodsId, "_self");
        }
        -->
    </script>
</head>

<body topmargin="0" background="images/bg.bmp">
<center>
    <table width="80%" class="abc" border="1" cellspacing="0" cellpadding="0">
        <tr>
            <td align="center">
                <jsp:include flush="true" page="head.jsp"></jsp:include>
            </td>
        </tr>
        <tr>
            <td align="center">
                <table class="abc" width="100%" border="1" cellspacing="0" cellpadding="0">
                    <tr>
                        <td height="15" colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="25%" rowspan="8"><img src="images/<%=gb.getPhoto()%>" width="136" height="169"/></td>
                        <td align="center"><%=gb.getGoodsName()%>
                        </td>
                    </tr>
                    <tr>
                        <td>价格：¥<%=gb.getGoodsPrice()%>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>ISBN：<%=gb.getGoodsId()%>
                        </td>
                    </tr>
                    <tr>
                        <td>类型：<%=gb.getType()%>
                        </td>
                    </tr>
                    <tr>
                        <td>出版商<%=gb.getPublisher()%>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td height="76" align="left" valign="top"></td>
                    </tr>
                    <tr>
                        <td height="23" colspan="2"><input type="button" onclick="addGoods(<%=gb.getGoodsId()%>)"
                                                           name="Submit" value="购买"/>
                            <input name="Submit2" type="button" onclick="goHall();" value="返回购物大厅"/></td>
                    </tr>
                    <tr>
                        <td height="15" colspan="2">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <td align="center">
                <jsp:include flush="true" page="tail.jsp"></jsp:include>
            </td>
        </tr>
    </table>
</center>
</body>
</html>
