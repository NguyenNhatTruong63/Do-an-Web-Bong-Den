package com.example.do_an_bong_den.controller;

import com.example.do_an_bong_den.services.Dao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ListProducts", value = "/ListProducts")
public class ListProducts extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Dao dao = new Dao();
        int count = dao.getTotalPage();
        int endPage = count/3;
        if(count % 3 != 0){
            endPage++;
        }
        request.setAttribute("endP", endPage);
        request.getRequestDispatcher("home.jsp").forward(request,response);
    }
}