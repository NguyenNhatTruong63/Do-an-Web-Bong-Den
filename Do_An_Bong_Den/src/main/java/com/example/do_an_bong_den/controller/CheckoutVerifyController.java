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
//        String fullname = request.getParameter("fullname");
//        String gender = request.getParameter("gender");
//        String address = request.getParameter("address");
//        String phonenumber = request.getParameter("phonenumber");
//        String email = request.getParameter("email");
//
//        if (fullname != null && gender != null && address != null && phonenumber != null && email != null) {
//            System.out.println(fullname + " " + gender + " " + address + " " + phonenumber + " " + email);
//
//            // Tạo đối tượng Order và thiết lập thông tin
//            OrderDAO orderDAO = new OrderDAO();
//
//        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String fullname = request.getParameter("fullname");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String phonenumber = request.getParameter("phonenumber");
        String email = request.getParameter("email");

        if (fullname != null && gender != null && address != null && phonenumber != null && email != null) {
            // Create an Order object and set the information
            Order order = new Order();
            order.setFullName(fullname);
            order.setAddress(address);
            order.setPhoneNumber(Integer.parseInt(phonenumber)); // Assuming phone number is an integer
            order.setEmail(email);

            // Create OrderDAO object and insert the order into the database
            OrderDAO orderDAO = new OrderDAO();
            orderDAO.insertOrder(order);


        }

        // Forward to your JSP page
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }
}