<%@ page import="services.CategoryServices" %>
<%@ page import="services.BrandServices" %>
<%@ page import="services.Dao" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="beans.*" %><%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 1/3/2024
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Bóng Đèn Led Ốp Trần Panasonic 18W</title>
  <link href="assart/sty.css" rel="stylesheet">
  <link href="assart/product_detail.css" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.4.2/css/all.css">
  <link href="assart/">
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
                  <% BrandServices brandServices = new BrandServices(); %>
                  <% for (Brand brand : brandServices.getBrandList()) { %>

                  <li class="dropdown"><a
                    href="product_brand.jsp?id_brand=<%=brand.getId() %>"><span><%= brand.getName() %></span></a>
                  </li>
                  <% } %>
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
                  <li><a href="policy.jsp">Chính Sách</a></li>
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
      </div>
      <% Dao dao = new Dao();
      Product product = dao.getProduct(request.getParameter("id_product"));
        Locale locale = new Locale("vi", "VN");
        NumberFormat currencyFormatter = NumberFormat.getCurrencyInstance(locale);
        BrandProduct brandProduct = dao.getBrandProduct(request.getParameter("id_product"));
        ProductDetail productDetail = dao.getProductDetail(request.getParameter("id_product"));
      %>

      <div id="product_detail" class="">
        <div class="container">
          <div class="detail_product">
            <div class="product_alpha">
              <a><img class="alpha_img" src="<%= product.getImg() %>">
                <p class="text_dicount"><%=(int) (product.getDiscount() * 100) %>% <br>Giảm </p></a>
            </div>
            <div class="product_omega">
              <div class="product_title">
                <h1 class="text_detail_product"> <%=product.getName()%>   </h1>
                <p class="price_detail_product">Giá: <del><%= currencyFormatter.format(product.getPrice()) %></del>  <%= currencyFormatter.format(product.salePrice()) %></p>
                <p class="firm">Hãng: <%=brandProduct.getNameBrand() %></p>
              </div>
              <hr>
              <div class="product_content">
                <div class="product_content1">
                  <p class="wattage">Công Suất: <span class="wattage_W"><%= productDetail.getWattage() %></span> </p>
                  <p class="voltage">Điện Áp: <span class="voltage1"> <%= productDetail.getVoltage() %> </span></p>
                </div>
                <div class="product_content2">
                  <p class="luminous_flux">Quang Thông: <span class="luminous_flux"> <%= productDetail.getLuminousFlux() %>; CRI: <%= productDetail.getCri() %></span></p>
                  <p class="longevity">Tuổi Thọ: <span class="age"><%= productDetail.getLongevity() %></span></p>
                </div>
              </div>
              <div class="product_content_foot">
                <p class="warranty_detail">Bảo hành chính hãng 24 tháng</p>
                <p class="contact_detail"> Liên hệ với chúng tôi để biết thêm thông tin: <span class="phone">0245730926 - 0257190589</span></p>
              </div>
              <div class="told">
                <button id="minus" onclick="minus()">-</button>
                <p id="numbera">0</p>
                <button id="plus" onclick="plus()">+</button>
                <input type="button" name="button" id="button_cart" value="Thêm vào giỏ hàng" class="text_cart_detail">
              </div>

            </div>
          </div>

          <div id="section_detail" class="">
            <div class="container">
              <hr style="width: 1260px" color="rgb(241 241 239)">
              <div class="detail_infor1">
                <h2 class="text_title"><%= product.getName() %></h2>
                <p class="text_infor">
                  Mức độ hoàn thiện tỉ mỉ, Sử dụng vật liệu chất lượng cao, mang đến nét sang trọng, hiện đại.<br>
                  Chỉ số truyền màu CRI cao, cho màu sắc gần với ánh sáng tự nhiên nhất, tối ưu cho mắt.<br>
                  Công suất thấp sản sinh ra lượng quang thông ánh sáng lớn, rất tiết kiệm điện so với đèn thông thường.<br>
                  Chíp led được sản xuất độc quyền công nghệ nhật bản, cho tuổi thọ cao, không gây ra những lỗi vặt như nháy đèn, chập chờ.<br>
                  Đèn ốp trần cao cấp số 1 về chất lượng ở Việt Nam.
                </p>
                <div class="forte">
                  <h3> Một số ưu điểm của Đèn led <%=brandProduct.getNameBrand() %></h3>
                  <ul>
                    <li>Đa dạng mẫu mã với 3 màu ánh sáng giúp khách hàng chọn lựa sản phẩm phù hợp với nhu cầu</li>
                    <li>Thiết kế mỏng phù hợp với mọi loại trần, tiện lợi thi công</li>
                    <li>Được làm từ các vật liệu nhựa và nhôm cao cấp giúp tản nhiệt tốt và nâng cao hiệu suất hoạt động của thiết bị</li>
                    <li>Tuổi thọ bền bỉ với số giờ chiếu sáng lên đến <%=productDetail.getLongevity() %></li>
                    <li>Bộ nguồn được thiết kế tách rời  giúp khách hàng dễ dàng thay thế</li>
                    <li>Góc chiếu rộng lên đến 120° </li>
                  </ul>
                  <div class="product_img">
                    <img src="assart/image/icon_detail/den-op-tran-ban-cong.jpg">
                    <img src="assart/image/icon_detail/den-led-op-tran.jpg" style="height: 400px">
                  </div>
                </div>
                <div class="detail_icon1">
                  <div class="longevity">
                    <p class="text_detail">Tuổi thọ cao</p>
                    <p class="text_content_detail">Tuổi thọ cao <%= productDetail.getLongevity() %>, độ tin cậy cao, không hạn chế số lần bật/tắt<br>
                      Cao gấp 2-3 lần so với đèn compact</p>
                  </div>
                  <img class="icon_detail1" src="assart/image/icon_detail/icon_Tuoithocao.png">
                </div>
                <div class="detail_icon2">
                  <div class="voltage">
                    <p class="text_detail">Dải điện áp hoạt động rộng <br> Tương thích điện từ trường EMC/EMI</p>
                    <p class="text_content_detail">Đèn LED Downlight có dải điện áp rộng (150-250V) ánh sáng và công suất không thay đổi khi điện áp lưới thay đổi </p>
                    <p class="text_content_detail"> Tương thích điện từ trường không gây ra hiện tượng nhiễu cho sản phẩm điện tử và không bị ảnh hưởng nhiễu của các thiết bị điện tử khác</p>
                  </div>
                  <img class="icon_detail2" src="assart/image/icon_detail/icon_dienaprong.png">
                </div>
                <div  class="detail_icon3">
                  <div class="cri">
                    <p class="text_detail">Hệ số trả màu (CRI > 80)</p>
                    <p class="text_content_detail"> Hệ số trả màu cao (CRI ≥ 80), ánh sáng trung thực tự nhiên </p>
                    <p class="text_content_detail"> Đáp ứng tiêu chuẩn chiếu sáng Việt Nam TCVN 7114: 2008</p>
                  </div>
                  <img class="icon_detail3" src="assart/image/icon_detail/icon_CRI.png">
                </div>

                <div class="detail_icon4">
                  <div class="environment">
                    <p class="text_detail">Thân thiện môi trường</p>
                    <p class="text_content_detail">Không chứa thủy ngân và hóa chất độc hại, không phát ra tia tử ngoại, an toàn cho người sử dụng</p>
                  </div>
                  <img class="icon_detail4" src="assart/image/icon_detail/icon_thanthienmoitruong.png">
                </div>

                <div class="detail_icon5">
                  <div class="application">
                    <p class="text_detail">Ứng Dụng</p>
                    <p class="text_content_detail"> Chiếu sáng hộ gia đình, căn hộ: phòng ngủ, phòng bếp….</p>
                    <p class="text_content_detail">  Chiếu sáng khu văn phòng: Phòng họp, hành lang, tiền sảnh…</p>
                    <p class="text_content_detail">  Chiếu sáng trung tâm thương mại, siêu thị: Sảnh, khu mua bán chung…</p>
                  </div>
                  <img class="icon_detail5" src="assart/image/icon_detail/icon_ungdung.png">
                </div>
              </div>
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
</script>
</body>
</html>
