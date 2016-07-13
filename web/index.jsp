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
  <table width="80%" border="0" align="center" cellpadding="0" cellspacing="5">
    <!--table 第一行-->
    <tr>
      <td height="94" colspan="2" align="center">
        <!-- 引入head.jsp -->
        <jsp:include flush="true" page="head.jsp"></jsp:include>
      </td>
    </tr>
    <!--table 第二行-->
    <tr >
      <td width="21%" height="185" align="center" >
        <jsp:include flush="true" page="left.jsp"></jsp:include>
      </td>
      <td width="73%" valign="top" align="center" >
        <jsp:include flush="true" page="right.jsp"></jsp:include>
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
