package com.example.do_an_bong_den.controller;

import com.example.do_an_bong_den.carts.Carts;
import com.example.do_an_bong_den.services.OrderDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "PaymentController", value = "/PaymentController")
public class PaymentController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("TrangThanhToan.jsp").forward(request, response);
//        OrderDAO orderDao = new OrderDAO();
        HttpSession session = request.getSession();
        Carts carts = (Carts) session.getAttribute("order");
        if(carts == null){
            carts = new Carts();
            session.setAttribute("order", carts);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);

    }

}