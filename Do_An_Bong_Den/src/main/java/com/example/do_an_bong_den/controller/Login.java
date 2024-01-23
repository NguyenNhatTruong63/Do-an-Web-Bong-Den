package com.example.do_an_bong_den.controller;

import com.example.do_an_bong_den.beans.Account;
import com.example.do_an_bong_den.services.Dao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        Dao dao = new Dao();
        Account a = dao.login(userName, password);


        if(userName.equals("") || password.equals("")){
            request.setAttribute("error", "Vui lòng nhập đầy đủ thông tin");
            request.getRequestDispatcher("formdn.jsp").forward(request, response);
        } else if(a == null) {
            request.setAttribute("error", "Tên đăng nhập hoặc mật khẩu không chính xác");
            request.getRequestDispatcher("formdn.jsp").forward(request, response);
        }
        else {
            HttpSession session = request.getSession();
            session.setAttribute("account", a);
            session.setAttribute("successMessage", "Đăng nhập thành công!");;
//            request.getRequestDispatcher("index").forward(request, response);
            response.sendRedirect("index.jsp");
        }
        response.getWriter().println("username: " + userName);
        response.getWriter().println("password: " + password);

    }
}