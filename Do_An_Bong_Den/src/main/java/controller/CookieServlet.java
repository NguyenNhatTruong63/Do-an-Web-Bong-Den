package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CookieServlet", value = "/CookieServlet")
public class CookieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //tao cookie
        Cookie tname = new Cookie("ta", "Tranminhthang");
        Cookie rname = new Cookie("tr", "nhattruong");
        Cookie lmame = new Cookie("li", "tuyetlinh");
        //set thoi gian ton tai
        tname.setMaxAge(24*60*60);
        rname.setMaxAge(24*60*60);
        lmame.setMaxAge(24*60*60);
        //add browse
        response.addCookie(tname);
        response.addCookie(rname);
        response.addCookie(lmame);
        response.sendRedirect("HomeCookieTest.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}