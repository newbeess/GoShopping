<%--
  Created by IntelliJ IDEA.
  User: elephant
  Date: 16/7/11
  Time: 下午8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>操作成功</title>
    <link rel="stylesheet" type="text/css" href="css/my.css">
</head>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
        <td height="200" align="center">
            恭喜，操作成功！！<br>
            <a href="login.jsp">返回登陆</a>

        </td>
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
