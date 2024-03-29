package com.example.do_an_bong_den.controller;

import com.example.do_an_bong_den.beans.Account;
import com.example.do_an_bong_den.services.Dao;
import com.example.do_an_bong_den.util.MaHoa;

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
        Account accountExist = dao.checkAccountExit(username);

        if (username.equals("") || password.equals("") || email.equals("") || phoneNumber.equals("") || repassword.equals("")) {
            request.setAttribute("error", "Vui lòng nhập đầy đủ thông tin");
            request.getRequestDispatcher("signup.jsp").forward(request, response);

        } else if (!password.equals(repassword)) {
            request.setAttribute("error", "Mật khẩu không khớp");
            request.getRequestDispatcher("signup.jsp").forward(request, response);

        } else if (accountExist != null) {
            request.setAttribute("error", "Tên đăng nhập hoặc email đã tồn tại");
            request.getRequestDispatcher("signup.jsp").forward(request, response);

        } else if (!email.matches(emailPattern)) {
            request.setAttribute("error", "Email không hợp lệ phải bao gồm @gmail.com");
            request.getRequestDispatcher("signup.jsp").forward(request, response);

        } else if (!phoneNumber.matches(phonePattern)) {
            request.setAttribute("error", "Số điện thoại không hợp lệ phải có 10 số");
            request.getRequestDispatcher("signup.jsp").forward(request, response);

        } else {
            password = MaHoa.toSHA1(password);
            dao.signup(username, password, repassword, email, phoneNumber);
            request.setAttribute("error", "Đăng ký thành công");
            request.getRequestDispatcher("formdn.jsp").forward(request, response);
//        String phone = request.getParameter("phone");
//        String address = request.getParameter("address");
            if (!password.equals(repassword)) {
//            response.sendRedirect("signup.jsp");
                request.setAttribute("error", "Vui lòng nhập lại password");
                request.getRequestDispatcher("formdn.jsp").forward(request, response);
//            response.sendRedirect("formdn.jsp");
            } else {
                password = MaHoa.toSHA1(password);
//            Dao dao = new Dao();
                Account account = dao.checkAccountExit(username);
                if (account == null) {
                dao.signup(username, password, repassword, email, phoneNumber);
//                    dao.signup(username, password, repassword, email);
                    response.sendRedirect("index.jsp");
                    password = MaHoa.toSHA1(password);
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

    }


}