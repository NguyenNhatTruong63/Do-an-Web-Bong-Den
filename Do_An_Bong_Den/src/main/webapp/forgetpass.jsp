<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 05/01/2024
  Time: 18:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Đặt Lại Mật Khẩu</title>
    <link rel="stylesheet" href="assart/forgetpw.css">
</head>
<body>
<style>
    .btn_submit input {
        text-decoration: none; /*bỏ gạch chân*/
        border: 3px solid black;
        border-radius: 60px;
        padding: 10px 20px;
        color: white;
        font-size: 30px;
        font-weight: bold;
        background: black;
    }

    .btn_submit input:hover {
        margin-top: 0px;
        background: white;
        color: black;
    }

    h2 {
        width: 500px;
        margin-left: -42px;
    }

    .btn_submit p, .btn_submit a {
        font-size: 20px;
        text-decoration: none;
        font-style: italic;
        margin-top: 18px;
        text-align: center;
    }

    a {
        padding: 0px 0px 0px 0px;
        background: none;
        color: mediumpurple;
        border-radius: unset;
        border: unset;
    }


</style>

<%
    String error = (String) (request.getAttribute("error"));
    if (error != null) {
        request.getAttribute("error");
    } else {
        error = "";
    }
    String userName = request.getParameter("username") != null ? request.getParameter("username") : "";
%>

<p style="color: white;
font-weight: bold;
font-size: 20px;
width: 500px;
height: auto;
margin-left: -50px;
margin-top: -40px;
position: absolute;
text-align: center;
border-radius: 5px;
background: red;

">
    <%= error %>
</p>
<form action="./changePassword" method="post">
    <h2>Đặt Lại Mật Khẩu</h2>
    <div class="username">
        <span> <img src="assart/image/icon_đk/user.png" style="width: 40px; height: 40px"></span>
        <input type="text" name="username" placeholder="Tên đăng nhập đã đăng ký" size="25" value="<%=userName%>">
    </div>
    <div class="password">
        <span><img src="assart/image/icon_đk/password.png" style="width: 40px; height: 40px"></span>
        <input type="password" name="newPassword" placeholder="Mật khẩu mới" size="25">
    </div>
    <div class="re-password">
        <span><img src="assart/image/icon_đk/password.png" style="width: 40px; height: 40px"></span>
        <input type="password" name="repassword" placeholder="Nhập lại mật khẩu mới" size="25">
    </div>
    <div class="btn_submit">
        <input type="submit" value="Đồng Ý">
    </div>

</form>
</body>
</html>
