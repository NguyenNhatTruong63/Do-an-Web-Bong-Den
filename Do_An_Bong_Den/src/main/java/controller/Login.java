package controller;


import beans.Account;
import services.Dao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "login", value = "/login")
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
        if(a == null){
            request.setAttribute("mess", "Vui lòng nhập lại user or password");
            request.getRequestDispatcher("formdn.jsp").forward(request, response);
        }else{
            HttpSession session = request.getSession();
            session.setAttribute("account", a);
            request.getRequestDispatcher("index").forward(request, response);
//            response.sendRedirect("home.jsp");
        }
    }
}
