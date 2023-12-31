package com.example.do_an_bong_den.controller;

import com.example.do_an_bong_den.beans.Account;
import com.example.do_an_bong_den.services.Dao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SignupController", value = "/SignupController")
public class SignupController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String re_password = request.getParameter("repassword");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        if(password.equals(re_password)){
            response.sendRedirect("formdk.jsp");
        } else {
            Dao dao = new Dao();
            Account account = dao.checkAccountExit(username);
            if(account == null){
                dao.signup("username", "password", "email", "phone", "address");
                response.sendRedirect("index");

            }else {
                response.sendRedirect("signup.jsp");
            }
        }

    }
}