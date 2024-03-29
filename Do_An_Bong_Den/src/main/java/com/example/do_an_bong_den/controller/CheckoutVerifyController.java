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

            // TODO: validation font number in here.
            order.setPhoneNumber(Integer.parseInt(phonenumber)); // Assuming phone number is an integer
            order.setEmail(email);

            // Create OrderDAO object and insert the order into the database
            OrderDAO orderDAO = new OrderDAO();
            try{
                orderDAO.insertOrder(order);
            }catch (ClassNotFoundException e){
                System.out.println("something when wrong!");
            }

            System.out.println("Order placed successfully!");
        } else {
            // Log for testing
            System.out.println("Invalid data. Order not placed.");
        }

        // Forward to your JSP page
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }
}