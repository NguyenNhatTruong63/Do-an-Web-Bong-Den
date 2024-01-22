<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.do_an_bong_den.services.BrandServices" %>
<%@ page import="com.example.do_an_bong_den.beans.Brand" %>
<%@ page import="com.example.do_an_bong_den.services.CategoryServices" %>
<%@ page import="com.example.do_an_bong_den.beans.Category" %>
<%@ page import="com.example.do_an_bong_den.services.Dao" %>
<%@ page import="com.example.do_an_bong_den.beans.Account" %>
<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 1/8/2024
  Time: 6:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Thông tin cá nhân</title>
    <link href="assart/sty.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.4.2/css/all.css">
    <script>
        function openPopup() {
            document.getElementById("popup-wrapper_pay").style.display = "block";
        }

        function closePopup() {
            document.getElementById("popup-wrapper_pay").style.display = "none";
        }
    </script>
    <style>
        #search1 {
            margin-top: 0px;
        }

        .info_personal {
            text-align: center;
        }

        .info_personal h2 {
            text-align: center;
            margin-bottom: 5px;


        }

        .info_personal input {
            margin-top: 5px;
            font-size: 20px;
            height: 35px;
            width: 417px;
            border-radius: 5px;
            background: #E8ECEE;
            padding-left: 10px;
            margin-bottom: 7px;
        }

        .info_personal p {
            margin-top: 10px;
            margin-bottom: -20px;
            font-size: 22px;
            font-weight: bold;
        }

        .btn {
            margin-top: 20px;
        }

        .btn a {
            color: white;
            border: 2px solid black;
            background-color: #20b2aa;
            border-radius: 5px;
            padding: 10px 20px;


        }

        .btn input:hover {

        }

    </style>

</head>

<body>
<!--header-->
<div id="flashbulb" class="flashbulb">
    <div class="container">
        <div id="header_1">
            <div class="container">
                <div id="section_title1">
                    <div class="logoshop_alpha">
                        <img class="logo_flash" src="assart/image/logo/light-bulb%20(1).png" width="50px" height="50px">
                        <p class="tex_flash"> Led Tâm Quang</p>
                    </div>
                    <div class="search">
                        <input type="text" name="search" id="search1" placeholder="Tìm Sản Phẩm" class="text_search">
                        <img class="icon_search" src="assart/image/icon_button/search.svg">
                    </div>
                    <div class="button_icon">
                        <a href="https://www.facebook.com/"><img class="icon_head"
                                                                 src="assart/image/logo/fb_icon_30x30.png" width="30px"
                                                                 height="30px"></a>
                        <a href="https://twitter.com/i/flow/login"><img class="icon_head"
                                                                        src="assart/image/logo/twitter.png" width="30px"
                                                                        height="30px"></a>
                        <a href="https://www.instagram.com/accounts/login/"> <img class="icon_head"
                                                                                  src="assart/image/logo/instagram.png"
                                                                                  width="30px" height="30px"></a>
                        <a href="https://www.google.com/intl/vi/gmail/about/"> <img class="icon_head"
                                                                                    src="assart/image/logo/email.png"
                                                                                    width="30px" height="30px"></a>
                    </div>
                </div>
            </div>
        </div>
        <div id="section_title" class="">
            <div class="container">
                <div id="nanavbar-collapse-01" class="collapse">
                    <nav id="navbar" class="navbar">
                        <ul>
                            <li><a href="index.jsp">Trang Chủ </a></li>
                            <li class="dropdown1"><a href="#"><span>Thương Hiệu</span><i class="fa-solid fa-caret-down"
                                                                                         style="color: white"></i>
                                <!--                                <img class="caret" src="assart/image/icon_button/caret-down.svg">-->
                            </a>
                                <% BrandServices brandServices = new BrandServices(); %>
                                <%--                hiển thị danh mục loại sp để chọn--%>
                                <ul><% for (Brand brand : brandServices.getBrandList()) { %>

                                    <li class="dropdown"><a
                                            href="product_Brand.jsp?id_namebrand=<%=brand.getId()%>"><span><%= brand.getName() %></span></a>
                                    </li>
                                    <% } %>
                                </ul>
                                <%--                <ul>--%>
                                <%--                  <li><a href="#">Rạng Đông</a></li>--%>
                                <%--                  <li><a href="#">PHILIPS</a></li>--%>
                                <%--                  <li><a href="#">OSRAM</a></li>--%>
                                <%--                  <li><a href="#">Điện Quang</a></li>--%>
                                <%--                  <li><a href="#">Duhal</a></li>--%>
                                <%--                  <li><a href="#">Panasonic</a></li>--%>
                                <%--                </ul>--%>
                            </li>
                            <li class="dropdown"><a href="#"><span>Sản Phẩm</span> <i class="fa-solid fa-caret-down"
                                                                                      style="color: white"></i> </a>
                                <% CategoryServices categoryServices = new CategoryServices(); %>
                                <%--                hiển thị danh mục loại sp để chọn--%>
                                <ul><% for (Category category : categoryServices.getCategoryList()) { %>

                                    <li class="dropdown"><a
                                            href="product_Category.jsp?id_caterory=<%=category.getId()%>"><span><%= category.getName() %></span></a>
                                    </li>
                                    <% } %>
                                </ul>
                            </li>
                            <li><a href="cart.html">Giỏ Hàng
                                <!--                                <img class="icon_cart" src="assart/image/icon_button/cart.svg">-->
                                <span><i class="fa-solid fa-cart-shopping fa-sm" style="color: white"></i></span>
                            </a></li>
                            <% Dao dao = new Dao();
                                Account account = (Account) session.getAttribute("account");
                                if (account == null) account = new Account();
                            %>
                            <li class="dropdown2"><a class="resume" href="#"><span class="text_resume"><img
                                    class="user1"
                                    src="assart/image/logo/user.jpg">Hello  <% if (session.getAttribute("account") != null) { %>
                                <%=account.getUserName() %>

                                <% } %> </span></a>
                                <%--                                    </c:if>--%>
                                <ul>
                                    <% if (session.getAttribute("account") != null) { %>
                                    <li><a href="ttcn.jsp?id_user=<%= account.getId() %>">Thông tin cá nhân</a></li>
                                    <li><a href="#">Lịch sử đơn hàng</a></li>
                                    <% } %>

                                    <% if (session.getAttribute("account") == null) {%>
                                    <li><a href="formdn.jsp"> Đăng Nhập</a></li>
                                    <li><a href="signup.jsp">Đăng Ký</a></li>
                                    <% } %>
                                    <li><a href="policy.jsp">Chính Sách</a></li>
                                    <% if (session.getAttribute("account") != null) { %>
                                    <li><a href="Logout">Đăng Xuất</a></li>
                                    <% } %>

                                </ul>
                            </li>
                            <%--                            </c:if>--%>

                            <li>
                                <span><i class="fa-regular fa-bell fa-beat-fade fa-sm"
                                         style="color: white;"></i> </span>
                            </li>
                        </ul>
                    </nav><!-- .navbar -->
                </div>


                <div class="info_personal">

                    <h2>THÔNG TIN CÁ NHÂN</h2>
                    <p class="info_item">Tên người dùng</p><br>
                    <input type="text" placeholder=" <%= account.getUserName() %>" readonly><br>
                    <p class="info_item"> Điện thoại</p><br>
                    <input type="text" placeholder="<%= account.getPhoneNumber() %>" readonly><br>
                    <p class="info_item"> Email</p><br>
                    <input type="text" placeholder="<%= account.getEmail() %>" readonly><br>

                    <div class="btn">
                        <a href="forgetpass.jsp"> Thay đổi mật khẩu</a>
                    </div>
                </div>


                <!--footer-->
                <div id="foot" class="">
                    <div class="container">
                        <div class="foot_alpha">
                            <img class="logo_flash_foot" src="assart/image/logo/light-bulb%20(1).png">
                            <p class="text_foot">Led Tâm Quang</p>
                        </div>
                        <div class="foot_contact">
                            <ul class="contact">
                                <li class="text_contact"> Liên Hệ</li>
                                <li class="text_contact_email"> Email:<p class="email_contact">flashbulb01@gmail.com</p>
                                </li>
                                <li class="text_contact_telephone"> Điện Thoại:<p class="telephone_contact">0245730926 -
                                    0257190589 </p></li>
                                <li class="text_policy"><a href="policy.html">Chính Sách</a></li>
                            </ul>
                        </div>
                        <div class="foot_address">
                            <p class="text_address1">Địa Chỉ:</p>
                            <p class="text_address"> 63 Khu Phố 6 Phường Linh Trung Thành Phố Thủ Đức TP.HCM</p>
                        </div>
                        <div class="foot_social">
                            <ul class="social">
                                <li class="text_social"> Liên Hệ Với Chúng Tôi</li>
                                <li class="social_icon"><a href="https://www.facebook.com/"> <img class="icon_foot"
                                                                                                  src="assart/image/logo/fb_icon_30x30.png"
                                                                                                  width="35px"
                                                                                                  height="35px"></a>
                                </li>
                                <li class="social_icon"><a href="https://twitter.com/i/flow/login"><img
                                        class="icon_foot" src="assart/image/logo/twitter.png " width="35px"
                                        height="35px"></a></li>
                                <li class="social_icon"><a href="https://www.instagram.com/accounts/login/"><img
                                        class="icon_foot" src="assart/image/logo/instagram.png" width="35px"
                                        height="35px"></a></li>
                                <li class="social_icon"><a href="https://www.google.com/intl/vi/gmail/about/"><img
                                        class="icon_foot" src="assart/image/logo/email.png" width="35px" height="35px"></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
