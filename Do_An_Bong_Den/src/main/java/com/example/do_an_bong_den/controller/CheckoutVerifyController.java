package com.example.do_an_bong_den.controller;

import beans.Order;
import com.example.do_an_bong_den.carts.Carts;
import com.example.do_an_bong_den.services.OrderDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CheckoutVerifyController", value = "/CheckoutVerifyController")
public class CheckoutVerifyController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String fullname = request.getParameter("fullname");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String phonenumber = request.getParameter("phonenumber");
        String email = request.getParameter("email");

        if (fullname != null && gender != null && address != null && phonenumber != null && email != null) {
            System.out.println(fullname + " " + gender + " " + address + " " + phonenumber + " " + email);

            // Tạo đối tượng Order và thiết lập thông tin
            Order order = new Order();
            order.setFullName(fullname);
            order.setEmail(email);
            order.setPhoneNumber(Integer.parseInt(phonenumber));
            order.setAddress(address);
            // Thiết lập các giá trị khác tương ứng

            // Lấy giỏ hàng từ session
            Carts carts = (Carts) session.getAttribute("cart");
            if (carts != null) {
                // Gọi hàm thêm đơn hàng vào cơ sở dữ liệu từ OrderDAO
                OrderDAO orderDAO = new OrderDAO();
                orderDAO.insertOrder(order);

                // Xóa giỏ hàng sau khi đã thanh toán thành công
                session.removeAttribute("cart");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}