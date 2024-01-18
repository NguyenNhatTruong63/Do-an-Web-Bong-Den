<%@ page import="beans.Brand" %>
<%@ page import="services.BrandServices" %>
<%@ page import="services.CategoryServices" %>
<%@ page import="beans.Category" %>
<%@ page import="beans.Product" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page import="services.OrderServices" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="assart/ThanhToan.css">
    <title>Thanh Toán</title>
    <link href="assart/sty.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.4.2/css/all.css">
    <!--  <link href="assart/order.css" rel="stylesheet">-->
    <script>
        function  openPopup(){
            document.getElementById("popup-wrapper_pay").style.display = "block";
        }
        function  closePopup(){
            document.getElementById("popup-wrapper_pay").style.display = "none";
        }
    </script>
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

                            </li>
                            <% CategoryServices categoryServices = new CategoryServices(); %>

                            <li class="dropdown"><a href="#"><span>Sản Phẩm</span> <i class="fa-solid fa-caret-down"
                                                                                      style="color: white"></i> </a>

                                <ul><% for (Category category : categoryServices.getCategoryList()) { %>

                                    <li class="dropdown"><a
                                            href="product_Category.jsp?id_caterory=<%=category.getId()%>"><span><%= category.getName() %></span></a>
                                    </li>
                                    <% } %>
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

                    <h4>ThÔNG TIN KHÁCH HÀNG</h4>
                    <label>Họ tên</label>
                    <br><input type="text" placeholder="Họ và tên người nhận"><br>
                    <label>Giới tính</label><br>
                    <select name="gioiTinh">
                        <option value="nam">Nam</option>
                        <option value="nu">Nữ</option>
                    </select><br>
                    <label> Địa chỉ</label><br>
                    <input type="text" placeholder="Địa chỉ người nhận"><br>
                    <label> Điện thoại</label><br>
                    <input type="text" placeholder="Số điện thoại người nhận"><br>
                    <label> Email</label><br>
                    <input type="text" placeholder="Email"><br>
                </div>
                <% OrderServices orderServices = new OrderServices(); %>
                <%
                    Locale locale = new Locale("vi", "VN");
                    NumberFormat currencyFormatter = NumberFormat.getCurrencyInstance(locale);
                %>
                <div class="cart_check_right">
                    <h4>ĐƠN HÀNG CỦA BẠN</h4>
                    <div class="info_cart">
                        <div class="iii">
                            <span>SẢN PHẨM</span>
                            <span class="tong">TỔNG</span>
                        </div>
                        <ul>
                            <li class="sp1">
                                <span><%= order.getName() %></span>
                                <span class="number">x 1</span><br>
                                <span>Giá:</span>
                                <span class="price"><%= order.getName() %></span>
                                <span class="total_price">150.000đ</span>
                            </li>
                            <li class="sp2">
                                <span>Đèn led âm trần Rạng Đông 16w D AT04L 155/16W </span>
                                <span class="number">x 2</span><br>
                                <span>Giá:</span>
                                <span class="price">240.000đ</span>
                                <span class="total_price">480.000đ</span>
                            </li>
                        </ul>
                        <span class="l_total"> TỔNG THANH TOÁN</span>
                        <span class="total">630.000đ</span>
                    </div>
                </div>

                <button class="btn_dathang"><a href="#" onclick="openPopup()"> Đặt Hàng</a></button>
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