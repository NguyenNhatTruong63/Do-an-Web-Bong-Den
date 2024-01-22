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
    <title>Đăng Ký Tài Khoản</title>
    <link rel="stylesheet" href="assart/DangKy.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.4.2/css/all.css">
</head>
<body>
<%
    String error = (String) (request.getAttribute("error"));
    if (error != null) {
        request.getAttribute("error");
    } else {
        error = "";
    }
    String userName = request.getParameter("username") != null ? request.getParameter("username") : "";
%>


<form action="./signup" method="post">
    <style>
        .btn_dk input {
            text-decoration: none; /*bỏ gạch chân*/
            border: 3px solid black;
            border-radius: 60px;
            padding: 10px 20px;
            color: white;
            font-size: 30px;
            font-weight: bold;
            background: black;
        }

        .btn_dk input:hover {
            margin-top: 0px;
            background: white;
            color: black;
        }

        h2 {
            width: 500px;
            margin-left: -42px;
        }
        .back p, .back a {
            font-size: 20px;
            text-decoration: none;
            font-style: italic;
            margin-top: 18px;
            text-align: center;
        }
        a{
            padding: 0px 0px 0px 0px;
            background: none;
            color: mediumpurple;
            border-radius: unset;
            border: unset;
        }


    </style>
    <p style="color: white;
font-weight: bold;
font-size: 20px;
width: 500px;
height: auto;
margin-left: -50px;
margin-top: 0px;
position: absolute;
text-align: center;
border-radius: 5px;
background: red;

">
    <%= error %>
</p>
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
        <input type="text" name="phoneNumber" placeholder="Số điện thoại" size="25">
    </div>

    <%--    <div class="diaChi">--%>
    <%--        <span><img src="assart/image/icon_đk/placeholder.png" width="35px" height="35px"></span>--%>
    <%--        <input type="text" name="address" placeholder="Địa chỉ" size="25">--%>
    <%--    </div>--%>

    <%--    <div class="btn_dk"><a href="">Đăng Ký</a></div>--%>
    <div class="btn_dk">
        <input type="submit" value="Đăng ký">
    </div>
    <div class="back">
        <p>Quay trở lại <a href="formdn.jsp">Đăng Nhập</a></p>
    </div>

</form>

</body>
</html>
