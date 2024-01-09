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
    <title>Forgetpassword</title>
    <link rel="stylesheet" href="assart/forgetpw.css">
</head>
<body>
<form action="" method="post">
    <h2>Đặt Lại Mật Khẩu</h2>
    <div class="username">
        <span> <img src="assart/image/icon_đk/user.png" style="width: 40px; height: 40px"></span>
        <input type="text" placeholder="Tên đăng nhập đã đăng ký" size="25">
    </div>
    <div class="password">
        <span><img src="assart/image/icon_đk/password.png" style="width: 40px; height: 40px"></span>
        <input type="password" placeholder="Mật khẩu mới" size="25">
    </div>
    <div class="re-password">
        <span><img src="assart/image/icon_đk/password.png" style="width: 40px; height: 40px"></span>
        <input type="password" placeholder="Nhập lại mật khẩu mới" size="25">
    </div>
    <div class="btn_submit">
        <a href="index.jsp">Đồng ý</a>
<%--        <input type="submit" value="Đồng ý">--%>
    </div>

</form>
</body>
</html>
