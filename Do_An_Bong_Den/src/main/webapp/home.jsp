<%@ page import="services.CategoryServices" %>
<%@ page import="beans.Category" %><%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 11/8/2023
  Time: 7:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Flashlight Shop</title>
  <link href="assart/sty.css" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.4.2/css/all.css">
  <script>
    function  openPopup(){
      document.getElementById("popup-wrapper").style.display = "block";
    }
    function  closePopup(){
      document.getElementById("popup-wrapper").style.display = "none";
    }
  </script>
  <style>
    #search1 {
      margin-top: 0px;
    }
  </style>
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
              <li><a href="home.jsp">Trang Chủ </a></li>
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
                  <% CategoryServices categoryServices = new CategoryServices(); %>
<%--                hiển thị danh mục loại sp để chọn--%>
                <ul><% for (Category category : categoryServices.getCategoryList()) { %>

                  <li class="dropdown"><a href="product_Category.jsp?id_caterory=<%=category.getId()%>"><span><%= category.getName() %></span></a></li>
                  <% } %>
                </ul>
              </li>
              <li><a href="cart.html">Giỏ Hàng
                <!--                                <img class="icon_cart" src="assart/image/icon_button/cart.svg">-->
                <span><i class="fa-solid fa-cart-shopping fa-sm" style="color: white"></i></span>
              </a></li>

              <li class="dropdown2"><a class="resume" href="#"><span class="text_resume">Hồ Sơ</span><i class="fa-solid fa-caret-down" style="color: white"></i></a>
                <!--                            <img class="caret" src="assart/image/icon_button/caret-down.svg"></a>-->

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
        <div id="image_item" class="">
          <div class="item_bg">
            <!--                        <img class="bg_item" src="assart/image/backgound/light%20bulbs.jpg">-->
            <!--                      <img class="bg_item" src="assart/image/backgound/isto.jpg">-->
            <img class="bg_item" src="assart/image/backgound/bd4.jpg">
            <p class="text_bg"> Thắp sáng mọi nơi - Sưởi ấm mọi ngôi nhà</p>
          </div>
        </div>
        <div id="section_body" class="">
          <div class="container">
            <div class="box_product">
              <div class="box_table">
                <table class="table_product" border="0px" cellspacing="20px" cellpadding="1px" >
                  <caption class="caption"> Sản Phẩm Bán Chạy Nhất</caption>
                  <tr id="section_product" class="products" >
                    <td class="table_image1" style="height: 300px; width: 300px">
                      <a href="product.html"><img class="image_sp1" src="assart/image/san_pham_tc/sp1_den-led-am-tran-18w-panasonic.jpg" width="270px" height="270px">
                        <p class="text_dicount">30% <br>Giảm </p></a>
                      <p class="text_sp1"> Bóng Đèn Led Ốp Trần Panasonic 18W</p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>150.000đ</del> 105.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>
                    </td>

                    <td class="table_image2" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp2" src="assart/image/san_pham_tc/sp2.jpg" width="270px" height="270px"><p class="text_dicount">20% <br>Giảm </p></a>
                      <p class="text_sp1"> Bóng đèn Led Bulb Philips 18W E27 3000K A67 ánh sáng vàng </p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>130.000đ</del> 104.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper1">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>

                    </td>
                    <td class="table_image3" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp3" src="assart/image/san_pham_tc/sp3_amtran_Panasonic-5wjpg.jpg" width="270px" height="270px"><p class="text_dicount">25% <br>Giảm </p></a>
                      <p class="text_sp1"> Bóng Đèn Led Panasonic Âm Trần kiểu vuông 5W</p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>130.000đ</del> 98.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper3">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>

                    </td>
                    <td class="table_image4" style="height: 300px; width: 250px">
                      <a><img class="image_sp4" src="assart/image/san_pham_tc/sp4.jpg" width="270px" height="270px"><p class="text_dicount">30% <br>Giảm </p></a>
                      <p class="text_sp1"> Đèn led âm trần Rạng Đông 16w D AT04L 155/16W  </p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>240.000đ</del> 168.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper4">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>

                    </td>
                  </tr>
                  <tr id="section_product_2">
                    <td class="table_image5" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp5" src="assart/image/san_pham_tc/sp5.jpg" width="270px" height="270px"><p class="text_dicount">25% <br>Giảm </p></a>
                      <p class="text_sp1"> ĐÈN LED Tuýp Bán Nguyệt 1.5M 48W </p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>140.000đ</del> 105.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper5">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>

                    </td>
                    <td class="table_image6" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp6" src="assart/image/san_pham_tc/sp6_denledamtranrubykingled-6w.jpg" width="270px" height="270px"><p class="text_dicount">40% <br>Giảm </p></a>
                      <p class="text_sp1"> Đèn LED Âm Trần KingLED | Đèn LED KingLED Chính Hãng </p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>220.000đ</del> 132.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper6">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>

                    </td>
                    <td class="table_image7" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp7" src="assart/image/san_pham_tc/sp7_bd_hngoai_philips.jpg" width="270px" height="270px"><p class="text_dicount">50% <br>Giảm </p></a>
                      <p class="text_sp1"> Bóng Đèn Hồng Ngoại Philips 150W </p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>450.000đ</del> 225.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper7">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>
                    </td>
                    <td class="table_image8" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp8" src="assart/image/san_pham_tc/sp8_den-led-am-tran-vuong-mat-vang-7w_panasonic.jpg" width="270px" height="270px"><p class="text_dicount">30% <br>Giảm </p></a>
                      <p class="text_sp1"> Bóng Đèn Led Panasonic Âm Trần Vuông Mặt Vàng 7W</p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>160.000đ</del> 112.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper8">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>

                    </td>
                  </tr>
                  <tr id="section_product3">
                    <td class="table_image9" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp9" src="assart/image/san_pham_tc/sp9_bongdenledbulb_doimau9w.jpg" width="270px" height="270px"><p class="text_dicount">10% <br>Giảm </p></a>
                      <p class="text_sp1"> Bóng Đèn Led Rạng Đông Đổi Màu 9W </p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>70.000đ</del> 63.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper9">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>

                    </td>
                    <td class="table_image10" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp10" src="assart/image/san_pham_tc/sp10_cambienRD7w.jpg" width="270px" height="270px"><p class="text_dicount">20% <br>Giảm </p></a>
                      <p class="text_sp1"> Bóng Đèn Led Bulb Rạng Đông Cảm Biến 7W </p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>110.000đ</del> 88.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper10">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>

                    </td>
                    <td class="table_image11" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp11" src="assart/image/san_pham_tc/sp11_dendaytoc60w.jpg" width="270px" height="270px"><p class="text_dicount">10% <br>Giảm </p></a>
                      <p class="text_sp1"> Đèn Dây Tóc Điện Quang 60W </p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>30.000đ</del> 27.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper11">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>

                    </td>
                    <td class="table_image12" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp12" src="assart/image/san_pham_tc/sp12_Bong-den-huynh-quang-philips-t5-14w_.jpg" width="270px" height="270px"><p class="text_dicount">15% <br>Giảm </p></a>
                      <p class="text_sp1"> Bóng Đèn Tuýp Philips T5-14W </p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>80.000đ</del> 68.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper12">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>

                    </td>
                  </tr>

                  <tr id="section_product4">
                    <td class="table_image13" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp13" src="assart/image/san_pham_tc/sp13_denledsanvuon.jpg" width="250px" height="250px"> <p class="text_dicount">40% <br>Giảm </p></a>
                      <p class="text_sp1">Bóng led trụ ngoài trời trang trí sân vườn A7414 | Flexhouse VN </p>
                      <div class="purch_price">
                        <p class="price_sp1"> <del>420.000</del> 252.000</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper13">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>

                    </td>
                    <td class="table_image14" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp14" src="assart/image/san_pham_tc/sp14_densanvuontron.jpg" width="250px" height="250px"> <p class="text_dicount">20% <br>Giảm </p></a>
                      <p class="text_sp1"> Bóng đèn led tròn ngoài trời trang trí sân vườn </p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>300.000đ</del> 240.000đ </p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper14">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>
                    </td>
                    <td class="table_image15" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp15" src="assart/image/san_pham_tc/sp15_bongdenbulb-rd-5W.jpg" width="250px" height="250px"><p class="text_dicount">15% <br>Giảm </p> </a>
                      <p class="text_sp1"> Bóng đèn led Blub tròn 5W </p>
                      <div class="purch_price">
                        <p class="price_sp1"> <del>50.000đ</del> 42.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper15">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>
                    </td>
                    <td class="table_image16" style="height: 300px; width: 250px">
                      <a><img class="image_sp16" src="assart/image/san_pham_tc/sp16_bong-den-led-tuyp-philips-t8.jpg" width="250px" height="250px"><p class="text_dicount">20% <br>Giảm </p> </a>
                      <p class="text_sp1"> Bóng đèn led Tuýp T8-18W-1.2m</p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>100.000đ</del> 80.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper16">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>
                    </td>
                  </tr>

                  <tr id="section_product5">
                    <td class="table_image17" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp17" src="assart/image/san_pham_tc/sp17_bden_bulb_rd_20w.jpg" width="250px" height="250px"><p class="text_dicount">20% <br>Giảm </p> </a>
                      <p class="text_sp1">Bóng Led Bulb Rạng Đông 20W  </p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>80.000đ</del> 64.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper17">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>

                    </td>
                    <td class="table_image18" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp18" src="assart/image/san_pham_tc/sp18%20optran_rd-12W.jpg" width="250px" height="250px" ><p class="text_dicount">25% <br>Giảm </p></a>
                      <p class="text_sp1"> Bóng đèn Led Ốp Trần Rạng Đông 12W</p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>140.000đ</del> 105.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper18">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>
                    </td>
                    <td class="table_image19" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp19" src="assart/image/san_pham_tc/sp19_bong-den-led-bulb-tru-nhom-duc-led-osram-20W.jpg" width="250px" height="250px"><p class="text_dicount">20% <br>Giảm </p></a>
                      <p class="text_sp1"> Bóng Đèn LED Bulb Trụ Nhôm Đúc Led Osram 20W</p>
                      <div class="purch_price">
                        <p class="price_sp1"> <del>80.000đ</del> 64.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper19">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>
                    </td>
                    <td class="table_image20" style="height: 300px; width: 250px">
                      <a href="#"><img class="image_sp20" src="assart/image/san_pham_tc/sp20_bd_buld_trụ_20w.jpg" width="250px" height="250px"><p class="text_dicount">25% <br>Giảm </p> </a>
                      <p class="text_sp1"> Bóng đèn Led Buld Trụ Rạng Đông</p>
                      <div class="purch_price">
                        <p class="price_sp1"><del>130.000đ</del> 98.000đ</p>
                        <button class="purche"><a href="#" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
                        <div class="popup-wrapper" id="popup-wrapper20">
                          <div class="popup">
                            <span class="close" onclick="closePopup()">&times;</span>
                            <img class="order_image" src="assart/image/logo/order_tc.jpg">
                            <p>Đã thêm vào giỏ hàng thành công</p>
                          </div>
                        </div>
                      </div>
                    </td>
                  </tr>


                </table>
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

      </div>

    </div>

  </div>

</div>


</body>
</html>
