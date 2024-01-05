package com.example.do_an_bong_den.controller;

import com.example.do_an_bong_den.beans.Product;
import com.example.do_an_bong_den.services.Dao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Search", value = "/search")
public class Search extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("search");
        Dao dao = new Dao();
        List<Product> list = dao.searchbyname(search);
        request.setCharacterEncoding("UTF-8");
        request.setAttribute("product", list);
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }
}