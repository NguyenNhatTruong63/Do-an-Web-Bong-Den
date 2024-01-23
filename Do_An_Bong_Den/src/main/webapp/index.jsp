<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.do_an_bong_den.carts.Carts" %>
<%@ page import="com.example.do_an_bong_den.db.JDBIConnector" %>
<%@ page import="com.example.do_an_bong_den.beans.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="com.example.do_an_bong_den.services.Dao" %>
<%@ page import="com.example.do_an_bong_den.beans.Account" %>
<%@ page import="com.example.do_an_bong_den.services.BrandServices" %>
<%@ page import="com.example.do_an_bong_den.beans.Brand" %>
<%@ page import="com.example.do_an_bong_den.services.CategoryServices" %>
<%@ page import="com.example.do_an_bong_den.beans.Category" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Flashlight Shop</title>
    <link href="assart/sty.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.4.2/css/all.css">
    <script>
        function openPopup() {
            document.getElementById("popup-wrapper").style.display = "block";
        }

        function closePopup() {
            document.getElementById("popup-wrapper").style.display = "none";
        }

        <%-- success.jsp --%>
        <% String successMessage = (String) session.getAttribute("successMessage"); %>

        <% if (successMessage != null && session.getAttribute("account") != null) { %>
        window.onload = function () {
            alert("<%= successMessage %>");

        };

        <% } %>
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
                    <%--                    xử lý phần search--%>
                    <div class="search">
                        <form action="./search" method="get">
                            <input type="search" name="keyword" id="search1" placeholder="Tìm Sản Phẩm"
                                   class="text_search">
                            <button type="submit" value="" class="icon_search"><i
                                    class="fa-solid fa-magnifying-glass"></i></button>
                        </form>
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

                            </li>

                            <li class="dropdown"><a href="#"><span>Sản Phẩm</span> <i class="fa-solid fa-caret-down" style="color: white"></i> </a>
                            <li class="dropdown"><a href="#"><span>Sản Phẩm</span> <i class="fa-solid fa-caret-down"
                                                                                      style="color: white"></i> </a>
                                <% CategoryServices categoryServices = new CategoryServices(); %>
                                <%--                hiển thị danh mục loại sp để chọn--%>
                                <ul><% for (Category category : categoryServices.getCategoryList()) { %>

                                    <li class="dropdown"><a href="product_Category.jsp?id_caterory=<%=category.getId()%>"><span><%= category.getName() %></span></a></li>
                                    <li class="dropdown"><a
                                            href="product_Category.jsp?id_caterory=<%=category.getId()%>"><span><%= category.getName() %></span></a>
                                    </li>
                                    <% } %>
                                </ul>
                            </li>

                            <li><a href="./addcart">

<%--                            <li class="dropdown"><a href="category.jsp"><span>Sản Phẩm</span> <i class="fa-solid fa-caret-down"--%>
<%--                                                                                      style="color: white"></i> </a>--%>
<%--                                <ul>--%>
<%--                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Buld</span> <i--%>
<%--                                            class="fa-solid fa-caret-right"></i></a>--%>
<%--                                        <ul>--%>
<%--                                            <li><a href="#">Bóng Đèn Buld Led Tròn</a></li>--%>
<%--                                            <li><a href="#">Bóng Đèn Buld Led Trụ</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </li>--%>
<%--                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Led Tuýp</span> <i--%>
<%--                                            class="fa-solid fa-caret-right"></i></a>--%>
<%--                                        <ul>--%>
<%--                                            <li><a href="#">Bóng Đèn Tuýp Led T5</a></li>--%>
<%--                                            <li><a href="#">Bóng Đèn Tuýp Led T8</a></li>--%>
<%--                                            <li><a href="#">Bóng Đèn Tuýp Led Bán Nguyệt</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </li>--%>
<%--                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Âm Trần</span><i--%>
<%--                                            class="fa-solid fa-caret-right"></i></a>--%>
<%--                                        <ul>--%>
<%--                                            <li><a href="#">Bóng Đèn Âm Trần Led Tròn</a></li>--%>
<%--                                            <li><a href="#">Bóng Đèn Âm Trần Led Vuông</a></li>--%>
<%--                                            <li><a href="#">Bóng Đèn Âm Trần Led Viền</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </li>--%>
<%--                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Ốp Trần</span><i--%>
<%--                                            class="fa-solid fa-caret-right"></i></a>--%>
<%--                                        <ul>--%>
<%--                                            <li><a href="#">Bóng Đèn Ốp Trần Led Tròn</a></li>--%>
<%--                                            <li><a href="#">Bóng Đèn Ốp Trần Led Vuông</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </li>--%>
<%--                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Led Cảm Ứng</span><i--%>
<%--                                            class="fa-solid fa-caret-right"></i></a>--%>
<%--                                        <ul>--%>
<%--                                            <li><a href="#">Bóng Đèn Led Ốp Trần</a></li>--%>
<%--                                            <li><a href="#">Bóng Đèn Led Âm Trần</a></li>--%>
<%--                                            <li><a href="#">Bóng Đèn Led Hồng Ngoại</a></li>--%>
<%--                                            <li><a href="#">Bóng Đèn Led Sân Vườn</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </li>--%>
<%--                                    <li class="dropdown"><a href="#"><span>Bóng Đèn Sợi Đốt</span><i--%>
<%--                                            class="fa-solid fa-caret-right"></i></a>--%>
<%--                                        <ul>--%>
<%--                                            <li><a href="#">Bóng Đèn Sợi Đốt Halogen</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </li>--%>
                            <li><a href="./AddCartController">

                                <!--                                <img class="icon_cart" src="assart/image/icon_button/cart.svg">-->
                                <% Carts carts = (Carts) session.getAttribute("cart");
                                    if (carts == null) carts = new Carts();
                                %>
                                <img class="cart1" src="assart/image/logo/cart1.jpg">
                                <p class="text_cart"><%= carts.getTotal() %>
                                </p>
                                <!--                                <span ><i class="fa-solid fa-cart-shopping fa-sm" style="color: white"></i></span>-->
                            </a></li>
                            <% Dao dao = new Dao();
                                Account account = (Account) session.getAttribute("account");
                                if (account == null) account = new Account();
                            %>
                            <%--                            <c:if test="${sessionScope.account != null}">--%>
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
                        </ul>
                    </nav><!-- .navbar -->
                </div>
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
                                <table class="table_product" border="0px" cellspacing="20px" cellpadding="1px">
                                    <caption class="caption"> Sản Phẩm Bán Chạy Nhất</caption>
                                    <% JDBIConnector Dao = new JDBIConnector();%>
                                    <% List<Product> list = Dao.getAllProduct();%>
                                    <% for (Product product : list) {%>
                                    <%
                                        NumberFormat numberFormat = NumberFormat.getNumberInstance();
                                    %>
                                    <tr id="section_product" class="products" style="float: left">
                                        <td class="table_image1"
                                            style="height: 300px; width: 300px; border: solid 1px black">
                                            <a href=""><img class="image_sp1" src="<%=product.getImg()%>" width="270px" height="270px">
                                                <p class="text_dicount"><%=product.getDiscount()%>%<br>Giảm</p></a>
                                            <p class="text_sp1"><%=product.getName()%>
                                            </p>
                                            <div class="purch_price">

                                                <p class="price_sp1">
                                                    <del><%=numberFormat.format(product.getPrice())%>
                                                    </del>
                                                    <%=numberFormat.format(product.salePrice())%>
                                                </p>
                                                <button class="purche"><a
                                                        href="./addcart"
                                                        onclick="openPopup()"> Thêm vào giỏ hàng</a></button>

                                                <p class="price_sp1"><del><%=numberFormat.format(product.getPrice())%></del>  <%=numberFormat.format(product.salePrice())%></p>
<%--                                                <button class="purche"><a href="/AddCartController ?id=<%= product.getId()%>" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>--%>
                                                <button class="purche"><a href="AddCartController?id=<%= product.getId()%>" onclick="openPopup()"> Thêm vào giỏ hàng</a></button>
<%--                                                <p class="price_sp1"><del><%=numberFormat.format(product.getPrice())%></del><%=numberFormat.format(product.salePrice())%>--%>
<%--                                                </p>--%>
<%--                                                <button class="purche"><a--%>
<%--                                                        href="/AddCartController ?id=<%= product.getId()%>"--%>
<%--                                                        onclick="openPopup()"> Thêm vào giỏ hàng</a></button>--%>

                                                <div class="popup-wrapper" id="popup-wrapper">
                                                    <div class="popup">
                                                        <span class="close" onclick="closePopup()">&times;</span>
                                                        <img class="order_image" src="assart/image/logo/order_tc.jpg">
                                                        <p>Đã thêm vào giỏ hàng thành công</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <% } %>
                                </table>
                            </div>
                            <div class="pagination">
                                <a href="#">&laquo;</a>
                                <a href="#" class="active">1</a>
                                <a href="#" class="">2</a>
                                <a href="#">3</a>
                                <a href="#">4</a>
                                <a href="#">5</a>
                                <a href="#">6</a>
                                <a href="#">&raquo;</a>
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