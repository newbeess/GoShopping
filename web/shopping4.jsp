<%@ page import="com.elephant.model.OrderUserBean" %>
<%--
  Created by IntelliJ IDEA.
  User: elephant
  Date: 16/7/12
  Time: 下午9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单完成</title>
    <%
        OrderUserBean oub=(OrderUserBean)request.getAttribute("orderDetail");
    %>
</head>
<body>
<table width="80%" border="1" cellspacing="0" cellpadding="0" align="center">
    <tr>
        <td align="center">
            <jsp:include flush="true" page="head.jsp"></jsp:include>
        </td>
    </tr>
    <tr>
        <td align="center">
            <table width="100%" border="1" cellpadding="0" cellspacing="0" class="abc">
                <tr>
                    <td colspan="9" align="center">图片</td>
                </tr>
                <tr>
                    <td colspan="9" align="center">订单详细信息</td>
                </tr>
                <tr align="center">
                    <td>订单号</td>
                    <td>收货人</td>
                    <td>收货地址</td>
                    <td>邮编</td>
                    <td>电话</td>
                    <td>总价</td>
                    <td>用户名</td>
                    <td>电子邮件</td>
                    <td>&nbsp;</td>
                </tr>
                <tr align="center">
                    <td>
                        <%=oub.getOrdersId()%>
                    </td>
                    <td>
                        <%=oub.getRealName()%>
                    </td>
                    <td>
                        <%=oub.getAddress()%>
                    </td>
                    <td>
                        <%=oub.getPostcode()%>
                    </td>
                    <td>
                        <%=oub.getPhone()%>
                    </td>
                    <td>¥<%=oub.getTotalPrice()%>
                    </td>
                    <td>
                        <%=oub.getUserName()%>
                    </td>
                    <td>
                        <%=oub.getEmail()%>
                    </td>
                    <td><a href="ShowOrderDetail?orderId=7">查看详情</a></td>
                </tr>
                <tr>
                    <td colspan="9" align="center">您的订单已经完成，服务器将在稍后时候向您的电子邮箱发送确认信息，并确认订单信息。</td>
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
</body>
</html>
