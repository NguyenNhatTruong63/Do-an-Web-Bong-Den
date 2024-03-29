<%@ page import="com.example.do_an_bong_den.carts.Carts" %>
<%@ page import="com.example.do_an_bong_den.carts.CartsProduct" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="beans.Product" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 20/01/2024
  Time: 11:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thanh toán</title>
    <link rel="stylesheet" href="assart/ThanhToan.css">
    <link href="assart/sty.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.4.2/css/all.css">
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
                        <a href="https://www.facebook.com/"><img class="icon_head" src="assart/image/logo/fb_icon_30x30.png" width="30px" height="30px"></a>
                        <a href="https://twitter.com/i/flow/login"><img class="icon_head" src="assart/image/logo/twitter.png" width="30px" height="30px"></a>
                        <a href="https://www.instagram.com/accounts/login/"> <img class="icon_head" src="assart/image/logo/instagram.png" width="30px" height="30px"></a>
                        <a href="https://www.google.com/intl/vi/gmail/about/"> <img class="icon_head" src="assart/image/logo/email.png" width="30px" height="30px"></a>
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
                            <li class="dropdown1"><a href="#"><span>Thương Hiệu</span><i class="fa-solid fa-caret-down" style="color: white"></i>
                                <!--                                <img class="caret" src="assart/image/icon_button/caret-down.svg">-->
                            </a>
                                <ul>
                                    <li><a href="#">Rạng Đông</a></li>
                                    <li><a href="#">PHILIPS</a></li>
                                    <li><a href="#">OSRAM</a></li>
                                    <li><a href="#">Điện Quang</a></li>
                                    <li><a href="#">Duhal</a></li>
                                    <li><a href="#">Panasonic</a></li>
                                </ul>
                            </li>
                            <li class="dropdown"><a href="#"><span>Sản Phẩm</span> <i class="fa-solid fa-caret-down" style="color: white"></i> </a>
                                <ul>
                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Buld</span> <i class="fa-solid fa-caret-right"></i></a>
                                        <ul>
                                            <li><a href="#">Bóng Đèn Buld Led Tròn</a></li>
                                            <li><a href="#">Bóng Đèn Buld Led Trụ</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Led Tuýp</span> <i class="fa-solid fa-caret-right"></i></a>
                                        <ul>
                                            <li><a href="#">Bóng Đèn Tuýp Led T5</a></li>
                                            <li><a href="#">Bóng Đèn Tuýp Led T8</a></li>
                                            <li><a href="#">Bóng Đèn Tuýp Led Bán Nguyệt</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Âm Trần</span><i class="fa-solid fa-caret-right"></i></a>
                                        <ul>
                                            <li><a href="#">Bóng Đèn Âm Trần Led Tròn</a></li>
                                            <li><a href="#">Bóng Đèn Âm Trần Led Vuông</a></li>
                                            <li><a href="#">Bóng Đèn Âm Trần Led Viền</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Ốp Trần</span><i class="fa-solid fa-caret-right"></i></a>
                                        <ul>
                                            <li><a href="#">Bóng Đèn Ốp Trần Led Tròn</a></li>
                                            <li><a href="#">Bóng Đèn Ốp Trần Led Vuông</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Led Cảm Ứng</span><i class="fa-solid fa-caret-right"></i></a>
                                        <ul>
                                            <li><a href="#">Bóng Đèn Led Ốp Trần</a></li>
                                            <li><a href="#">Bóng Đèn Led Âm Trần</a></li>
                                            <li><a href="#">Bóng Đèn Led Hồng Ngoại</a></li>
                                            <li><a href="#">Bóng Đèn Led Sân Vườn</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Sợi Đốt</span><i class="fa-solid fa-caret-right"></i></a>
                                        <ul>
                                            <li><a href="#">Bóng Đèn Sợi Đốt Halogen</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="cart.html">
                                <!--                                <img class="icon_cart" src="assart/image/icon_button/cart.svg">-->
                                <img class="cart1" src="assart/image/logo/cart1.jpg">
                                <p class="text_cart">2</p>
                                <!--                                <span ><i class="fa-solid fa-cart-shopping fa-sm" style="color: white"></i></span>-->
                            </a></li>

                            <li class="dropdown2"><a class="resume" href="#"><span class="text_resume"><img class="user1" src="assart/image/logo/user.jpg"></span></a>

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
                                <span><i class="fa-regular fa-bell fa-beat-fade fa-sm" style="color: white;"></i> </span>
                            </li>
                        </ul>
                    </nav><!-- .navbar -->
                </div >
                <!--content thanh toán-->
                <div class="checkout">
                    <span><img class="pay" src="assart/image/logo/payment.png" height="80px" width="120px"></span>

                    <p class="thanhtoan">THANH TOÁN</p>
                    <p class="check_info">Vui lòng kiểm tra thông tin Khách hàng, thông tin Giỏ hàng trước khi Thanh Toán</p>
                </div>

                <div class="input_group_left">
                    <form action="CheckoutVerifyController" id="formCheckoutInfomation" method="post">
                        <h4>ThÔNG TIN KHÁCH HÀNG</h4>
                        <label>Họ tên</label><br>
                        <input type="text" placeholder="Họ và tên người nhận" name="fullname"><br>
                        <label>Giới tính</label><br>
                        <select name="gender">
                            <option value="nam" name="name">Nam</option>
                            <option value="nu" name="nu">Nữ</option>
                        </select><br>
                        <label> Địa chỉ</label><br>
                        <input type="text" placeholder="Địa chỉ người nhận" name="address"><br>
                        <label> Điện thoại</label><br>
                        <input type="text" placeholder="Số điện thoại người nhận" name="phonenumber"><br>
                        <label> Email</label><br>
                        <input type="text" placeholder="Email" name="email"><br>
                    </form>
                </div>

                <div class="cart_check_right">
                    <h4>ĐƠN HÀNG CỦA BẠN</h4>
                    <div class="info_cart">
                        <div class="iii">
                            <span>SẢN PHẨM</span>
                            <span class="tong">TỔNG</span>
                        </div>
                        <ul>
                            <%
                                Carts carts = (Carts) session.getAttribute("cart");
                                if(carts != null) {
                                    ArrayList<com.example.do_an_bong_den.beans.Product> cartproducts = carts.getProductFromCart();
                                    for(com.example.do_an_bong_den.beans.Product product : cartproducts) {%>
                            <li>
                                <span><%=product.getName() %>/span>
                                <span class="number">x <%=product.getQuantity()%></span><br>
                                <span>Giá:</span>
                                <span class="price"><%=product.getPrice()%></span>
                                <span class="total_price"><%=product.getPrice() * product.getQuantity()%></span>
                            </li>
                                <% } }%>

                        </ul>
                        <span class="l_total"> TỔNG THANH TOÁN</span>
                    </div>
                </div>
                    <button class="btn_dathang" type="submit" form="formCheckoutInfomation"> Đặt Hàng</button>

                <div class="popup-wrapper_pay" id="popup-wrapper_pay">
                    <div class="popup_pay">
                        <span class="close" onclick="closePopup()">&times;</span>
                        <img class="order_image" src="assart/image/logo/order_tc.jpg">
                        <h1 class="order_text">Đặt Hàng Thành Công</h1>
                        <p class="text_order_tc"> Cảm ơn bạn đã đặt hàng tại <span class="text_shop" style="color: red"> Led Tâm Quang</span></p>
                        <p class="text_order_tc"> Bạn cần chuẩn bị số tiền tương ứng:<p class="text_price_order">630.000</p></p>
                        <p class="text_order_tc"> Để xem lịch sử giỏi hàng vui lòng <a class="lk_order" href="#">xem tại đây</a></p>
                        <p class="text_order_tc"> Để được hỗ trợ vui lòng gọi vào: <span class="sdt">0245730926 hoặc 0257190589</span></p>
                        <p class="text_order_tc">Quay về trang chủ: <a class="lk_order1" href="ieda.html">Tại đây</a></p>
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
                                <li class="text_contact_email"> Email:<p class="email_contact">flashbulb01@gmail.com</p></li>
                                <li class="text_contact_telephone"> Điện Thoại:<p class="telephone_contact">0245730926 - 0257190589 </p> </li>
                                <li class="text_policy"><a href="policy.html">Chính Sách</a></li>
                            </ul>
                        </div>
                        <div class="foot_address">
                            <p class="text_address1">Địa Chỉ:</p>
                            <p class="text_address"> 63 Khu Phố 6 Phường Linh Trung Thành Phố Thủ Đức TP.HCM</p>
                        </div>
                        <div class="foot_social">
                            <ul class="social">
                                <li class="text_social"> Liên Hệ Với Chúng Tôi </li>
                                <li class="social_icon"><a href="https://www.facebook.com/"> <img class="icon_foot" src="assart/image/logo/fb_icon_30x30.png" width="35px" height="35px"></a></li>
                                <li class="social_icon"><a href="https://twitter.com/i/flow/login"><img class="icon_foot" src="assart/image/logo/twitter.png " width="35px" height="35px"></a></li>
                                <li class="social_icon"><a href="https://www.instagram.com/accounts/login/"><img class="icon_foot" src="assart/image/logo/instagram.png" width="35px" height="35px"></a></li>
                                <li class="social_icon"><a href="https://www.google.com/intl/vi/gmail/about/"><img class="icon_foot" src="assart/image/logo/email.png" width="35px" height="35px"></a></li>
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
