package com.example.do_an_bong_den.controller;

import com.example.do_an_bong_den.carts.Carts;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.rmi.RemoteException;

@WebServlet(name = "AddCartController", value = "/AddCartController")
//@WebServlet(name = "AddCartController", value = "/add-cart")
public class AddCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       int id = 0;
       int quantity = 0;
        try {
            id = Integer.parseInt(request.getParameter("id"));
            quantity = Integer.parseInt(request.getParameter("quantity"));

       }catch (NumberFormatException e){

       }
        HttpSession session = request.getSession();
        Carts carts = (Carts) session.getAttribute("cart");
        if(carts == null){
            carts = new Carts();
            session.setAttribute("cart", carts);
        }
        if(quantity <=0 ) quantity = 1;
        carts.add(id, quantity);
        session.setAttribute("cart", carts);
        session.setAttribute("totalPrice", carts.getTotal());

        response.sendRedirect("carts.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}