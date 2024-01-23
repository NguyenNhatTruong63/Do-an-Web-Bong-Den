package com.example.do_an_bong_den.controller;

import com.example.do_an_bong_den.beans.Product;
import com.example.do_an_bong_den.services.Dao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

@WebServlet(name = "Search", value = "/search")
public class Search extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // search bằng tiếng việt
        request.setCharacterEncoding("UTF-8");
        // lấy giá trị từ khóa tìm kiếm
        String search = request.getParameter("keyword");
//        Dao dao = new Dao();
//        List<Product> list = dao.searchbyname(search);
//        request.setCharacterEncoding("UTF-8");
//        request.setAttribute("product", list);
//        request.getRequestDispatcher("searchsp.jsp").forward(request, response);

//        response.sendRedirect("searchsp.jsp?keyword=" + URLEncoder.encode(search, "UTF-8"));
        request.getRequestDispatcher("searchsp.jsp").forward(request, response);
// chuyển hướng người dùng đến trang kết quả tìm kiếm
    }
}