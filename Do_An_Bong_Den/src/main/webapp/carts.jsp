<%@ page import="com.example.do_an_bong_den.carts.Carts" %>
<%@ page import="com.example.do_an_bong_den.db.JDBIConnector" %>
<%@ page import="com.example.do_an_bong_den.beans.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Flashlight Shop</title>
    <link href="assart/cart.css" rel="stylesheet">
    <link href="assart/sty.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.4.2/css/all.css">
</head>
    <script>
        function openPopup() {
            document.getElementById("popup-wrapper").style.display = "block";
        }

        function closePopup() {
            document.getElementById("popup-wrapper").style.display = "none";
        }
    </script>
</head>
<body>
<%--<h1><%= "Hello World!" %>--%>
<%--</h1>--%>
<%--<br/>--%>
<%--<a href="hello-servlet">Hello Servlet</a>--%>
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
                            <li><a href="ieda.html">Trang Chủ </a></li>
                            <li class="dropdown1"><a href="#"><span>Thương Hiệu</span><i class="fa-solid fa-caret-down"
                                                                                         style="color: white"></i>
                                <!--                                <img class="caret" src="assart/image/icon_button/caret-down.svg">-->
                            </a>
                                <ul>
                                    <li><a href="#">Rạng Đông</a></li>
                                    <li><a href="#">PHILIPS</a></li>
                                    <li><a href="#">MPE</a></li>
                                    <li><a href="#">Điện Quang</a></li>
                                    <li><a href="#">Duhal</a></li>
                                    <li><a href="#">Panasonic</a></li>
                                </ul>
                            </li>
                            <li class="dropdown"><a href="#"><span>Sản Phẩm</span> <i class="fa-solid fa-caret-down"
                                                                                      style="color: white"></i> </a>
                                <ul>
                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Buld</span> <i
                                            class="fa-solid fa-caret-right"></i></a>
                                        <ul>
                                            <li><a href="#">Bóng Đèn Buld Led Tròn</a></li>
                                            <li><a href="#">Bóng Đèn Buld Led Trụ</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Led Tuýp</span> <i
                                            class="fa-solid fa-caret-right"></i></a>
                                        <ul>
                                            <li><a href="#">Bóng Đèn Tuýp Led T5</a></li>
                                            <li><a href="#">Bóng Đèn Tuýp Led T8</a></li>
                                            <li><a href="#">Bóng Đèn Tuýp Led Bán Nguyệt</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Âm Trần</span><i
                                            class="fa-solid fa-caret-right"></i></a>
                                        <ul>
                                            <li><a href="#">Bóng Đèn Âm Trần Led Tròn</a></li>
                                            <li><a href="#">Bóng Đèn Âm Trần Led Vuông</a></li>
                                            <li><a href="#">Bóng Đèn Âm Trần Led Viền</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Ốp Trần</span><i
                                            class="fa-solid fa-caret-right"></i></a>
                                        <ul>
                                            <li><a href="#">Bóng Đèn Ốp Trần Led Tròn</a></li>
                                            <li><a href="#">Bóng Đèn Ốp Trần Led Vuông</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Led Cảm Ứng</span><i
                                            class="fa-solid fa-caret-right"></i></a>
                                        <ul>
                                            <li><a href="#">Bóng Đèn Led Ốp Trần</a></li>
                                            <li><a href="#">Bóng Đèn Led Âm Trần</a></li>
                                            <li><a href="#">Bóng Đèn Led Hồng Ngoại</a></li>
                                            <li><a href="#">Bóng Đèn Led Sân Vườn</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Sợi Đốt</span><i
                                            class="fa-solid fa-caret-right"></i></a>
                                        <ul>
                                            <li><a href="#">Bóng Đèn Sợi Đốt Halogen</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="cart.html">
                                <!--                                <img class="icon_cart" src="assart/image/icon_button/cart.svg">-->
                                <% Carts carts = (Carts) session.getAttribute("cart");
                                    if (carts == null) carts = new Carts();
                                %>
                                <img class="cart1" src="assart/image/logo/cart1.jpg">
                                <p class="text_cart"><%= carts.getTotal() %>
                                </p>
                                <!--                                <span ><i class="fa-solid fa-cart-shopping fa-sm" style="color: white"></i></span>-->
                            </a></li>

                            <li class="dropdown2"><a class="resume" href="#"><span class="text_resume"><img
                                    class="user1" src="assart/image/logo/user.jpg"></span></a>

                                <ul>
                                    <li><a href="#">Thông tin cá nhân</a></li>
                                    <li><a href="#">Lịch sử đơn hàng</a></li>
                                    <li><a href="policy.html">Chính Sách</a></li>
                                    <li><a href="formdn.html"> Đăng Nhập</a></li>
                                    <li><a href="formdk.html">Đăng ký</a></li>
                                    <li><a href="ieda.html">Đăng Xuất</a></li>
                                </ul>
                            </li>

                            <li>
                                <span><i class="fa-regular fa-bell fa-beat-fade fa-sm"
                                         style="color: white;"></i> </span>
                            </li>
                        </ul>
                    </nav><!-- .navbar -->
                </div>

                <div id="section_cart" class="#">
                    <div class="container">
                        <div id="cart1">
                            <div class="cart_product1">
                                <a class=order_history" href="#"><p class="text_order"> Lịch sử đơn hàng</p></a>
                                <%NumberFormat numberFormat = NumberFormat.getNumberInstance();%>
                                <% JDBIConnector Dao = new JDBIConnector();%>
                                <% List<Product> list = Dao.getAllProduct();%>
                                <% for (Product product : list) {%>
                                <ul class="product1">
                                    <li class="cart_product_image1">
                                        <img class="cart_image1" src="<%=product.getImg()%>">
<%--                                        <img class="cart_image1" src="assart/image/san_pham_tc/sp1_den-led-am-tran-18w-panasonic.jpg">--%>
                                    </li>
                                    <li class="text_cart">
                                        <h1 class="text_cart1"><%=product.getName()%></h1>
                                        <p class="price_cart1"><del><%=numberFormat.format(product.getPrice())%></del><%=numberFormat.format(product.salePrice())%></p>
                                        <span class="delete"><i class="fa-solid fa-trash"></i></span>
                                        <p class="delivery">Dự kiến giao ngày: 10/11/20023 - 12/11/2023</p>
                                        <div class="add_quantity">
                                            <p class="quantity">Số Lượng</p>
                                            <button id="minus" onclick="minus()">-</button>
                                            <p id="numbera">0</p>
                                            <button id="plus" onclick="plus()">+</button>
                                        </div>
                                        <button class="pay_cart"><a class="card" href="pay_page.html">Thanh Toán</a></button>
                                    </li>
                                </ul>
                                <%}%>

                            </div>

                        </div>

                    </div>

                </div>


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