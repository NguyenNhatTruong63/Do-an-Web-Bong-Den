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
<form action="./signup" method="post">
    <h2> Đăng Ký Tài Khoản</h2>
    <div class="username">
        <span> <img src="assart/image/icon_đk/user.png" width="40px" height="40px"></span>
        <input type="text" name="username" placeholder="Tên đăng nhập" size="25">
    </div>
    <div class="password">
        <span><img src="assart/image/icon_đk/password.png" width="40px" height="40px"></span>
        <input type="password" name="password" placeholder="Mật khẩu" size="25">
    </div>
    <div class="re-password">
        <span><img src="assart/image/icon_đk/password.png" width="40px" height="40px"></span>
        <input type="password" name="repassword" placeholder="Nhập lại mật khẩu" size="25">
    </div>
    <div class="email">
        <span><img src="assart/image/icon_đk/email1.png" width="35px" height="35px"></span>
        <input type="text" name="email" placeholder="Email" size="25">
    </div>
    <div class="sdt">
        <span><img src="assart/image/icon_đk/telephone.png" width="35px" height="35px"></span>
        <input type="text" name="phone" placeholder="Số điện thoại" size="25">
    </div>

    <div class="diaChi">
        <span><img src="assart/image/icon_đk/placeholder.png" width="35px" height="35px"></span>
        <input type="text" name="address" placeholder="Địa chỉ" size="25">
    </div>

<%--    <div class="btn_dk"><a href="">Đăng Ký</a></div>--%>
    <div class="btn_dk">
        <input type="submit" value="Đăng ký">

    </div>


</form>

</body>
</html>
