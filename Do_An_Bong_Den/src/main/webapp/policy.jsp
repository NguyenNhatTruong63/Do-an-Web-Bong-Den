<%@ page import="com.example.do_an_bong_den.services.Dao" %>
<%@ page import="com.example.do_an_bong_den.beans.Account" %>
<%@ page import="com.example.do_an_bong_den.services.BrandServices" %>
<%@ page import="com.example.do_an_bong_den.beans.Brand" %>
<%@ page import="com.example.do_an_bong_den.carts.Carts" %>
<%@ page import="com.example.do_an_bong_den.services.CategoryServices" %>
<%@ page import="com.example.do_an_bong_den.beans.Category" %><%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 1/22/2024
  Time: 10:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chính Sách</title>
    <link href="assart/sty.css" rel="stylesheet">
    <link href="assart/policy.css" rel="stylesheet">
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
                            <li><a href="ieda.html">Trang Chủ </a></li>
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

                            <li>
                                <span><i class="fa-regular fa-bell fa-beat-fade fa-sm"
                                         style="color: white;"></i> </span>
                            </li>
                        </ul>
                    </nav><!-- .navbar -->
                </div>

                <div id="policy" class="">
                    <div class="container">
                        <div class="policy_text">
                            <h1 class="text_policy"> Chính Sách bảo hành</h1>
                            <p class="policy_content">
                                Sản phẩm lỗi do nhà sản xuất (nguồn không làm việc không ổn định, ánh sáng giảm mạnh sau
                                1 thời gian sử dụng, không sáng trong điều kiện làm việc bình thường).
                                Đa số sản phẩm đèn LED được chúng tôi được bảo hành một đổi một trong suốt thời gian 12
                                – 24 tháng.<br>
                                Một số trường hợp chúng tôi sẽ sửa chữa và hoàn trả lại sản phẩm cho.<br>
                                Quý khách hàng trong vòng 7 ngày.
                            </p>
                            <p class="policy_content">
                                Sản phẩm chỉ được bảo hành khi còn thời hạn bảo hành được ghi trong phiếu bảo hành, tem
                                bảo hành.<br>
                                Bảo hành không bao gồm vận chuyển hàng và giao hàng.<br>
                                Địa điểm bảo hành: 63 Khu Phố 6 Phường Linh Trung Thành Phố Thủ Đức TP.HCM
                            </p>
                            <h2 class="no_warranty">Các trường hợp không được bảo hành</h2>
                            <p class="detail_warranty"> Sản phẩm hết thời gian bảo hành.<br>
                                Các thông tin trên sản phẩm không trùng khớp với thông tin ghi trên phiếu bảo hành hoặc.
                                Phiếu bảo hành không được điền đầy đủ các thông tin cơ bản (loại bóng, công suất, thời
                                gian bảo hành…)
                                Tem bảo hành dám trên sản không còn nguyên vẹn; bị nhàu, nát không đọc được; bị tẩy,
                                xoá; bị sửa chữa nội dung.<br>
                                Sản phẩm KHÔNG được bảo hành khi bị chập nổ mắt led, nguồn của bóng do sủ dụng không
                                đúng mục đích hoặc sai theo phạm vi, điều kiện làm việc của bóng đèn led chiếu sáng.<br>
                                Thiết bị hỏng hóc do tác động cơ học, biến dạng, rơi, vỡ, va đập, bị xước, bị hỏng do ẩm
                                ướt, hoen rỉ, chảy nước, động vật xâm nhập vào hoặc các sự cố bất khả kháng như thiên
                                tai, hoả hoạn, cháy nổ hoặc con nguời làm hỏng.Hệ thống tản nhiệt phía sau đèn đặt trong
                                môi trường thông thoáng (nhiệt độ không vượt quá 55°C).<br>
                                Tự ý tháo dỡ tem bảo hành trên sản phẩm, sửa chữa bởi các cá nhân.</p>

                            <h3 class="policy_compensation">Chính sách bảo hành và đền bù</h3>
                            <p class="compensation">Do các sản phẩm thay đổi liên tục các mẫu mã và tính năng kỹ thuật,
                                từ đó có thể xảy ra trường hợp là sau một thời gian dài sử dụng thì một số model ngừng
                                sản xuất và không còn các linh kiện thay thế.<br>
                                Do vậy trong trường hợp bất khả kháng sản phẩm của Quý khách vẫn còn thời hạn bảo hành
                                và bị hỏng nhưng nhà sản xuất và công ty không thể kiếm được linh kiện thay thế thì sẽ
                                được áp dụng chính sách thay thế sản phẩm của Quý khách bằng một sản phẩm mới tinh với
                                thời hạn bảo hành và điều kiện bảo hành như khi bán hàng mới thông thường và tính từ
                                ngày đổi hàng.<br>
                                Quý khách sẽ bù thêm tiền để đổi lấy sản phẩm mới này theo phương thức: Lấy giá bán của
                                sản phẩm mới dự kiến sẽ đổi sang trừ đi phần giá trị còn lại sẽ tính ra phần giá trị mới
                                Quý khách cần bù thêm.</p>


                            <h4 class="return">Quy định về đổi và trả hàng</h4>
                            <p class="exchange_return">Do nhân viên giao nhầm về: Màu, mã sản phẩm, sai với mẫu khách
                                hàng yêu cầu.<br>
                                Sản phẩm đổi phải chưa qua sử dụng, còn nguyên tem, nhãn mác, không bị trầy xước.<br>
                                Quý khách được miễn phí chuyển trả hàng trong vòng 24h sau khi nhận được hàng, quý khách
                                vui lòng liên hệ với nhân viên bán hàng của công ty để thông báo về tình trạng sản phẩm
                                nếu có lỗi.</p>


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
                                <li class="text_policy1"><a href="policy.html">Chính Sách</a></li>
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
