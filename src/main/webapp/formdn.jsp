<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 11/8/2023
  Time: 7:56 AM
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
    String error = (String)(request.getAttribute("error"));
    if(error != null) {
        request.getAttribute("error");
    } else {
        error = "";
    }
    String username = request.getParameter("username") != null ? request.getParameter("username") : "";
%>

<p style="color: white;
font-weight: bold;
font-size: 20px;
width: 500px;
height: auto;
margin-left: -12px;
margin-top: -45px;
position: absolute;
text-align: center;
border-radius: 5px;
background: red;

">
    <%= error %>
</p>
<form method="post" action="./login">
    <h2> Đăng Nhập</h2>
    <div class="username">
        <span> <img src="assart/image/icon_đk/user.png" width="40px" height="40px"></span>
        <input type="text" placeholder="Tên đăng nhập" size="25" name="username" value="<%=username%>">
    </div>
    <div class="password">
        <span><img src="assart/image/icon_đk/password.png" width="40px" height="40px" ></span>
        <input type="password" placeholder="Mật khẩu" size="25"  name="password">
    </div>

    <div class="btn_dn" id="btn_dn">
        <input type="submit" value="Đăng Nhập" onclick="document.getElementById()">
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
