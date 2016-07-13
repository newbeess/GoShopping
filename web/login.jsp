<%--
  Created by IntelliJ IDEA.
  User: elephant
  Date: 16/7/11
  Time: 下午7:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登陆</title>
</head>
<body>
<%--
  Created by IntelliJ IDEA.
  User: elephant
  Date: 16/7/8
  Time: 上午11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/my.css">
    <script type="text/javascript" src="js/banner.js"></script>
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
            <table width="100%" border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="center"><img src="images/cartnavi-2.gif" width="599" height="49"/></td>
                </tr>
                <tr>
                    <td align="center">
                        <form action="usermanageservlet?type=login" method="post">
                            <table width="40%" border="1" cellpadding="0" cellspacing="0" bordercolor="#9999FF"
                                   class="abc">
                                <tr>
                                    <td colspan="2" align="center"><img src="images/dl.gif" width="149" height="63"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="39%" align="right">用户名:</td>
                                    <td width="61%" align="left"><input name="username" type="text" size="15"/></td>
                                </tr>
                                <tr>
                                    <td align="right">密 &nbsp;码:</td>
                                    <td align="left"><input name="password" type="text" size="15"/></td>
                                </tr>
                                <tr>
                                    <td align="right"><input type="submit" name="login" value="用户登录"/></td>
                                    <td align="left"><input type="submit" name="signup" value="用户注册"/></td>
                                </tr>
                            </table>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td align="right"> <img src="images/cartnext.gif" width="87" height="19"/></td>
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

</body>
</html>
