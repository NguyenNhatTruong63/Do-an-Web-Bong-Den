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
        String phoneNumber = request.getParameter("phoneNumber");
        String emailPattern = "^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
        String phonePattern = "^\\d{10}$";




        Dao dao = new Dao();
        Account accountExist = dao.checkAccountExist(username);

        if (username.equals("") || password.equals("") || email.equals("") || phoneNumber.equals("") || repassword.equals("")) {
            request.setAttribute("error", "Vui lòng nhập đầy đủ thông tin");
            request.getRequestDispatcher("signup.jsp").forward(request, response);

        } else if (!password.equals(repassword)) {
            request.setAttribute("error", "Mật khẩu không khớp");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else if (accountExist != null) {

            request.setAttribute("error", "Tài khoản đã tồn tại");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else if (accountExist != null) {

            request.setAttribute("error", "Tài khoản đã tồn tại");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        } else if (!email.matches(emailPattern)) {
            request.setAttribute("error", "Email không hợp lệ");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
            return;
        } else if (!phoneNumber.matches(phonePattern)) {
            request.setAttribute("error", "Số điện thoại không hợp lệ");
            request.getRequestDispatcher("signup.jsp").forward(request, response);

        } else {
            dao.signup(username, password, repassword, email, phoneNumber);
            request.setAttribute("error", "Đăng ký thành công");
            request.getRequestDispatcher("formdn.jsp").forward(request, response);

        }

    }


}