<%@ page language="java" import="java.util.*,com.elephant.model.*" pageEncoding="utf-8" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="">

    <title>My JSP 'showMycart.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <link rel="stylesheet" type="text/css" href="css/my.css">
    <script type="text/javascript">
        <!--
        // 清空购物车
        function delAll() {
            window.open("shoppingclservlet?type=delAll", "_self");
        }

        -->
    </script>
    <%
        MyCartBO mcb = (MyCartBO) request.getSession().getAttribute("mycart");

        ArrayList al = (ArrayList) request.getAttribute("mycart");
    %>
</head>

<body topmargin="0" background="images/bg.bmp">

<table width="80%" border="1" cellspacing="0" cellpadding="0" align="center">
    <tr>
        <td align="center">
            <jsp:include flush="true" page="head.jsp"></jsp:include>
        </td>
    </tr>
    <tr>
        <td align="center">
            <form action="shoppingclservlet?type=updateGoods" method="post">
                <table width="100%" border="1" cellpadding="0" cellspacing="0" class="abc">
                    <tr>
                        <td align="center" colspan="6"><img src="images/cartnavi-1.gif" width="599" height="49"/>
                        </td>
                    </tr>
                    <tr align="center">
                        <td width="21%">编1号</td>
                        <td width="25%">名称</td>
                        <td width="27%">单价</td>
                        <td colspan="3">数量</td>
                    </tr>
                    <%
                        for (int i = 0; i < al.size(); i++) {
                            GoodsBean gb = (GoodsBean) al.get(i);
                    %>
                    <tr align="center">
                        <td><%=gb.getGoodsId()%>
                        </td>
                        <td><%=gb.getGoodsName()%>
                        </td>
                        <td><%=gb.getGoodsPrice()%>
                        </td>
                        </td>
                        <td width="9%">
                            <input type="hidden" name="goodsId" value="<%=gb.getGoodsId()%>"/>
                            <input name="newNums" type="text" size="7" value="<%=mcb.getNumById(gb.getGoodsId()+"")%>"/>
                        </td>
                        <td width="9%"><a href="shoppingclservlet?type=delGoods&goodsId=<%=gb.getGoodsId()%>">删除</a>
                        </td>
                        <td width="9%"><a href="showdetailservlet?type=showdetail&id=<%=gb.getGoodsId()%>">查看</a>
                    </tr>


                    <%
                        }
                    %>


                    <tr>
                        <td>&nbsp;</td>
                        <td align="center"><input onclick="delAll();" type="button" name="Submit" value="删除全部书籍"/>
                        </td>
                        <td align="center"><input type="submit" name="Submit2" value="修 改 数 量"/></td>
                        <td colspan="3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="6">&nbsp;</td>
                    </tr>
                </table>
            </form>
        </td>
    <tr>
        <td colspan="6">
            <table class="abc" width="100%" border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="46%" align="left">您共选择了价值￥<%=mcb.getAllPrice()%>的商品,点
                        <a href="index.jsp">
                            此处
                        </a>
                        继续购物。
                    </td>
                    <td width="54%" align="right">
                        <a href="shoppingcl2servlet">
                            <img border="0" src="images/cartnext.gif" width="87" height="19"/>
                        </a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</tr>
<tr>
    <td align="center">
        <jsp:include flush="true" page="tail.jsp"></jsp:include>
    </td>
</tr>
</table>
</body>
</html>
