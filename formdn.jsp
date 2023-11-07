<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 11/7/2023
  Time: 9:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="assart/DangNhap.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.4.2/css/all.css">
    <title>Đăng Nhập</title>

</head>
<body>
<%
  String error = (String)(request.getAttribute("error") != null ? (String) request.getAttribute("error"):"");
  String username = request.getParameter("username") != null ? request.getParameter("username") : "";
  if(error == null ) error = "";
  if(error == username ) username = "";
%>

<p style="color: red; width: 800px;margin-left: -130px;text-align: center"><%= error %></p>
<form method="post" action="./doLogin">
<h2> Đăng Nhập</h2>
<div class="username">
  <span> <img src="assart/image/icon_đk/user.png" width="40px" height="40px"></span>
  <input type="text" placeholder="Tên đăng nhập" size="25" name="username" value="<%= username%>">
</div>
<div class="password">
  <span><img src="assart/image/icon_đk/password.png" width="40px" height="40px"></img></span>
  <input type="password" placeholder="Mật khẩu" size="25">
</div>

<div class="btn_dn">
  <input type="submit" value="Đăng Nhập">
</div>
<div class="f_pass">
  <p><a href="">Quên mật khẩu?</a></p>
</div>
<div class="questionDk">
  <p>Bạn chưa có tài khoản? <a href="DangKy.html">Đăng ký ngay</a></p>
</div>
</form>
</body>
</html>
