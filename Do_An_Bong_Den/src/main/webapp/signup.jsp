<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 31/12/2023
  Time: 22:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>SignUp</title>
    <link rel="stylesheet" href="assart/DangKy.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.4.2/css/all.css">
</head>
<body>
<%
    String error = (String)(request.getAttribute("error"));
    if(error != null) {
        request.getAttribute("error");
    } else {
        error = "";
    }
    String userName = request.getParameter("username") != null ? request.getParameter("username") : "";
    String password = request.getParameter("password") != null ? request.getParameter("password") : "";
    String repassword = request.getParameter("repassword") != null ? request.getParameter("repassword") : "";
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


<form action="./signup" method="post">
    <h2> Đăng Ký Tài Khoản</h2>
    <div class="username">
        <span> <img src="assart/image/icon_đk/user.png" style="width: 40px; height: 40px"></span>
        <input type="text" name="username" value="" placeholder="Tên đăng nhập" size="25">
    </div>
    <div class="password">
        <span><img src="assart/image/icon_đk/password.png" style="width: 40px; height: 40px"></span>
        <input type="password" name="password" value="" placeholder="Mật khẩu" size="25">
    </div>
    <div class="re-password">
        <span><img src="assart/image/icon_đk/password.png" style="width: 40px; height: 40px"></span>
        <input type="password" name="repassword" value="" placeholder="Nhập lại mật khẩu" size="25">
    </div>
    <div class="email">
        <span><img src="assart/image/icon_đk/email1.png" style="width: 40px; height: 40px"></span>
        <input type="text" name="email" placeholder="Email" size="25">
    </div>
    <div class="sdt">
        <span><img src="assart/image/icon_đk/telephone.png" style="width: 35px; height: 35px"></span>
        <input type="text" name="phone" placeholder="Số điện thoại" size="25">
    </div>

    <div class="diaChi">
        <span><img src="assart/image/icon_đk/placeholder.png" style="width: 35px; height: 35px"></span>
        <input type="text" name="address" placeholder="Địa chỉ" size="25">
    </div>

<%--    <div class="btn_dk"><a href="">Đăng Ký</a></div>--%>
    <div class="btn_dk">
        <input type="submit" value="Đăng ký">

    </div>
</form>

</body>
</html>
