package com.example.do_an_bong_den.controller;

import com.example.do_an_bong_den.beans.Account;
import com.example.do_an_bong_den.services.Dao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SignupController", value = "/signup")
public class SignupController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        String email = request.getParameter("email");
//        String phone = request.getParameter("phone");
//        String address = request.getParameter("address");

        if(!password.equals(repassword)){
//            response.sendRedirect("signup.jsp");
            request.setAttribute("error", "Vui lòng nhập lại user or password");
            request.getRequestDispatcher("formdn.jsp").forward(request, response);
//            response.sendRedirect("formdn.jsp");
        }
        else {
            Dao dao = new Dao();
            Account account = dao.checkAccountExit(username);
            if(account == null){
                dao.signup("username",  "password", "repassword", "email");
                response.sendRedirect("index.jsp");

            }
            else {
                response.sendRedirect("formdn.jsp");
            }
        }

    }
}