package com.example.do_an_bong_den.carts;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CartController", value = "/CartController")
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productIdParam = request.getParameter("productId");
        String quantityParam = request.getParameter("quantity");

        if (productIdParam != null && quantityParam != null) {
            try {
                int productId = Integer.parseInt(productIdParam);
                int quantity = Integer.parseInt(quantityParam);

                HttpSession session = request.getSession();
                Carts cart = (Carts) session.getAttribute("cart");
                if (cart != null && cart.update(productId, quantity)) {
                    session.setAttribute("cart", cart);
                }
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }

        response.sendRedirect("cart.jsp");
    }
}