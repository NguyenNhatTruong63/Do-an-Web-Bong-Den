<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 26/12/2023
  Time: 21:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Carts</title>
    <link href="assart/cart.css" rel="stylesheet">
    <link href="assart/sty.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.4.2/css/all.css">
</head>
<body>
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
                            <li><a href="ieda.jsp">Trang Chủ </a></li>
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
                            <li><a href="carts.jsp">
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
                <div id="section_cart" class="#">
                    <div class="container">
                        <div id="cart1">
                            <div class="cart_product1">
                                <a class=order_history" href="#"><p class="text_order"> Lịch sử đơn hàng</p></a>
                                <ul class="product1">
                                    <li class="cart_product_image1">
                                        <img class="cart_image1" src="assart/image/san_pham_tc/sp1_den-led-am-tran-18w-panasonic.jpg">
                                    </li>
                                    <li class="text_cart">
                                        <h1 class="text_cart1"> Bóng Đèn Led Ốp Trần Panasonic 18W</h1>
                                        <p class="price_cart1"><del>150.000đ</del> 105.000đ</p>
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
                                <ul class="product1">
                                    <li class="cart_product_image1">
                                        <img class="cart_image1" src="assart/image/san_pham_tc/sp4.jpg">
                                    </li>
                                    <li class="text_cart">
                                        <h1 class="text_cart1"> Đèn led âm trần Rạng Đông 16w D AT04L 155/16W </h1>
                                        <p class="price_cart1"><del>240.000đ</del> 168.000đ</p>
                                        <p class="delivery">Dự kiến giao ngày: 10/11/20023 - 12/11/2023</p>
                                        <div class="add_quantity">
                                            <p class="quantity">Số Lượng</p>
                                            <button id="minus1" onclick="minus1()">-</button>
                                            <p id="numberb">0</p>
                                            <button id="plus1" onclick="plus1()">+</button>
                                        </div>
                                        <button class="pay_cart"><a class="card" href="pay_page.html">Thanh Toán</a></button>
                                    </li>
                                </ul>

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
            </div >
        </div >
    </div>
</div>

<script>
    function plus(){
        let number = document.getElementById("numbera").innerHTML
        if (document.getElementById("plus")){
            number ++;
            document.getElementById("numbera").innerHTML = number
        }

    }
    function minus(){
        let number = document.getElementById("numbera").innerHTML
        if (document.getElementById("minus")){
            number --;
            document.getElementById("numbera").innerHTML = number
            if(number < 0){
                document.getElementById("numbera").innerHTML = 0;
            }
        }

    }
    function plus1(){
        let number = document.getElementById("numberb").innerHTML
        if (document.getElementById("plus1")){
            number ++;
            document.getElementById("numberb").innerHTML = number
        }

    }
    function minus1(){
        let number = document.getElementById("numberb").innerHTML
        if (document.getElementById("minus1")){
            number --;
            document.getElementById("numberb").innerHTML = number
            if(number < 0){
                document.getElementById("numberb").innerHTML = 0;
            }
        }

    }
</script>
</body>

</html>
