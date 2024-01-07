package com.example.do_an_bong_den.controller;

import com.example.do_an_bong_den.beans.Product;
import com.example.do_an_bong_den.services.Dao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListProducts", value = "/ListProducts")
public class ListProducts extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String indexP = request.getParameter("index");
        if(indexP == null){
            indexP = "1";
        }
        int index = Integer.parseInt(indexP);


        Dao dao = new Dao();
        int count = dao.getTotalPage();
        int endPage = count/3;
        if(count % 3 != 0){
            endPage++;
        }
        List<Product> list = dao.pagingProduct(index);
        request.setAttribute("listA", list);
        request.setAttribute("endP", endPage);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}