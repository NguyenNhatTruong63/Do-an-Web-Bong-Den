package com.example.do_an_bong_den.controller;

import com.example.do_an_bong_den.beans.Product;
import com.example.do_an_bong_den.services.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListProduct", value = "/ListProduct")
public class ListProduct extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//    List<Product> list = ProductServices.getProductList();
//    request.setAttribute("list", list);
//    request.getRequestDispatcher("idea.jsp").forward(request, response);

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

  }
}
