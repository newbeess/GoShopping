<%--
  Created by IntelliJ IDEA.
  User: elephant
  Date: 16/7/11
  Time: 下午8:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/my.css">
    <script type="text/javascript" src="js/banner.js"></script>
</head>
<body>
<table width="80%" border="0" align="center" cellpadding="0" cellspacing="5">
    <!--table 第一行-->
    <tr>
        <td height="94" colspan="2" align="center">
            <!-- 引入head.jsp -->
            <jsp:include flush="true" page="head.jsp"></jsp:include>
        </td>
    </tr>
    <!--table 第二行-->
    <tr>
        <table align="center">
            <form action="usermanageservlet?type=signup" method="post">

                <tr>
                    <td height="27" align="left" valign="top"><h1>用户注册</h1>
                    </td>
                </tr>
                <tr>
                    <td height="27" align="left" valign="top">
                        ID：<input type="text" name="id">
                    </td>
                </tr>
                <tr>
                    <td height="27" align="left" valign="top">
                        用户名：<input type="text" name="username">
                    </td>
                </tr>
                <tr>
                    <td height="27" align="left" valign="top">
                        密码：<input type="password" name="password">
                    </td>
                </tr>
                <tr>
                    <td height="27" align="left" valign="top">
                        确认密码：<input type="password" name="password1">
                    </td>
                </tr>
                <tr>
                    <td height="27" align="left" valign="top">
                        真实姓名：<input type="text" name="realname">
                    </td>
                </tr>
                <tr>
                    <td height="27" align="left" valign="top">
                        邮箱：<input type="text" name="mail">
                    </td>
                </tr>
                <tr>
                    <td height="27" align="left" valign="top">
                        手机号码：<input type="text" name="phone">
                    </td>
                </tr>
                <tr>
                    <td height="27" align="left" valign="top">
                        联系地址：<input type="text" name="address">
                    </td>
                </tr>
                <tr>
                    <td height="27" align="left" valign="top">
                        邮编：<input type="text" name="postcode">
                    </td>
                </tr>
                <tr>
                    <td height="27" align="center">
                        <input type="submit" value="注册">
                    </td>
                </tr>
            </form>
        </table>
    </tr>
    <!--table 第三行-->
    <tr>
        <td height="62" colspan="2" align="center">
            <jsp:include flush="true" page="tail.jsp"></jsp:include>
        </td>
    </tr>
</table>

</body>
</html>
