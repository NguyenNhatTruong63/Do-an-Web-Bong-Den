package com.example.do_an_bong_den.controller;

import com.example.do_an_bong_den.beans.Account;
import com.example.do_an_bong_den.services.Dao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "ChangePassword", value = "/changePassword")
public class ForgetPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String newPassword = request.getParameter("newPassword");
        String repassword = request.getParameter("repassword");
        Dao dao = new Dao();
        Account account = dao.changePassword(username, newPassword);
        Account accountExist = dao.checkAccountExit(username);

        if (username.equals("") || newPassword.equals("")) {
            request.setAttribute("error", "Vui lòng nhập đầy đủ thông tin");
            request.getRequestDispatcher("forgetpass.jsp").forward(request, response);
        } else if (!newPassword.equals(repassword)) {
            request.setAttribute("error", "Mật khẩu không khớp");
            request.getRequestDispatcher("forgetpass.jsp").forward(request, response);

        }else if (accountExist == null) {
            request.setAttribute("error", "Tên người dùng không đúng");
            request.getRequestDispatcher("forgetpass.jsp").forward(request, response);

        } else {
            request.setAttribute("error", "Đổi mật khẩu thành công");
            request.getRequestDispatcher("formdn.jsp").forward(request, response);
        }
    }
}